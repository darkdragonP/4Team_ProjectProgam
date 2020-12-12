package com.medicine.app.bCry;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.medicine.app.MdBoardCounts;
import com.medicine.app.bReply.BReplyService;
import com.medicine.app.bReply.BReplyVO;
import com.medicine.app.board.BoardService;
import com.medicine.app.board.BoardVO;

@Controller
public class BCryController {

	@Autowired
	BCryService bCryService;
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	BReplyService bReplyService;
	
	
	@RequestMapping(value = "/insertBCry.do", method = RequestMethod.POST)
	public ModelAndView insertBCry(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, BCryVO vo, HttpServletRequest request, ModelAndView mv) {
		System.out.println("insertBCry 메소드 실행.");
		HttpSession session = request.getSession();
		int uidx = (Integer) session.getAttribute("uIdx");
		vo.setuIdx(uidx);
		int recentBCry = vo.getBcry() + 1;
		String bIdx = Integer.toString(vo.getbIdx());
		System.out.println(bCryService.checkBCry(vo));
		if (bCryService.checkBCry(vo) == null) {
			vo.setBcry(recentBCry);
			bCryService.insertBCry(vo);
		} else {
			mv.addObject("comment2", "이미 신고처리 되었습니다.");
		}
		BoardVO board = boardService.selectBoard(bIdx);
		board.setbCry(Integer.toString(recentBCry));
		boardService.updateBCry(board);
		List<BReplyVO> selectBReplyList = bReplyService.selectBRelplyList(bIdx);

		int listCnt = boardService.countsBoard();

		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setListCnt(listCnt);
		if (listCnt == 0) {
			System.out.println("검색된결과가 없습니다.");
		} else {
			mdBCounts.setPage(curPage, startp, curRange);
			if (result == 1) {
				mdBCounts.prevSetBlock(curRange);

			} else if (result == 2) {
				mdBCounts.nextSetBlock(curRange);
			}
			Map<String, Integer> vi = new HashMap<String, Integer>();

			vi.put("startIndex", mdBCounts.getStartIndex());
			vi.put("endIndex", mdBCounts.getEndIndex());
			List<BoardVO> boardList = boardService.selectBoardList(vi);
			mv.addObject("mdBCounts", mdBCounts);
			mv.addObject("boardList", boardList);
		}

		mv.addObject("board", board);
		mv.addObject("selectBReplyList", selectBReplyList);
		mv.setViewName("/board/SelectBoard");

		return mv;
	}

}