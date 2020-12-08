package com.medicine.app.bReply;

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
import com.medicine.app.board.BoardService;
import com.medicine.app.board.BoardVO;

@Controller
public class BReplyController {
	@Autowired
	private BReplyService bReplyService;
	@Autowired
	private BoardService boardService;

	@RequestMapping(value = "/insertBReply.do", method = RequestMethod.POST)
	public ModelAndView insertmdReply(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, BReplyVO vo, HttpServletRequest request, ModelAndView mv) {
		System.out.println("insertmdReply 댓글 추가 메소드 실행.");
		HttpSession session = request.getSession();
		int uIdx = (Integer) session.getAttribute("uIdx");
		vo.setuIdx(uIdx);
		String bIdx = Integer.toString(vo.getBIdx());
		bReplyService.insertBReplyList(vo);
		BoardVO board = boardService.selectBoard(bIdx);
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

	@RequestMapping(value = "/deleteBReply.do")
	public ModelAndView deleteMdReply(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, BReplyVO vo, HttpServletRequest request, ModelAndView mv) {
		System.out.println("deleteMdReply 댓글 제거 메소드 실행.");
		String uReIdx = Integer.toString(vo.getuReIdx());
		String bIdx = Integer.toString(vo.getBIdx());

		bReplyService.deleteBReply(uReIdx);
		BoardVO board = boardService.selectBoard(bIdx);
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
