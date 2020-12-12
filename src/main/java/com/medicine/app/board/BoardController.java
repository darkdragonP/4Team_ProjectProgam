package com.medicine.app.board;

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

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;

	@Autowired
	private BReplyService bReplyService;

	@RequestMapping(value = "/boardList.do")
	public ModelAndView boardList(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, HttpServletRequest request, ModelAndView mv) {
		System.out.println("-------------------------------------------");
		System.out.println("selectboardList 메소드 실행.");

		int listCnt = boardService.countsBoard();
		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setListCnt(listCnt);
		if (listCnt == 0) {
			mv.addObject("comment", "현재 자료가 없습니다.");
		} else {
			mdBCounts.setPage(curPage, startp, curRange);
			if (result == 1) {
				mdBCounts.prevSetBlock(curRange);

			} else if (result == 2) {
				mdBCounts.nextSetBlock(curRange);
			}

			Map<String, Integer> vo = new HashMap<String, Integer>();

			vo.put("startIndex", mdBCounts.getStartIndex());
			vo.put("endIndex", mdBCounts.getEndIndex());
			List<BoardVO> boardList = boardService.selectBoardList(vo);
			mv.addObject("mdBCounts", mdBCounts);
			mv.addObject("boardList", boardList);
		}
		mv.setViewName("/board/SetBoardList");

		return mv;
	}

	@RequestMapping(value = "/insertBoard.do")
	public ModelAndView InsertBoard(HttpServletRequest request) {
		System.out.println("insertBoard 단순이동 메소드 실행.");

		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/InsertBoard");

		return mv;
	}

	@RequestMapping(value = "/InsertBoard.do", method = RequestMethod.POST)
	public ModelAndView InsertBoard(BoardVO vo, HttpServletRequest request, ModelAndView mv) {
		HttpSession session = request.getSession();
		int uIdx = (Integer) session.getAttribute("uIdx");
		vo.setuIdx(uIdx);
		boardService.insertBoard(vo);
		String maxBIdx = boardService.selectMaxBIdx();
		BoardVO board = boardService.selectBoard(maxBIdx);
		String bIdx=Integer.toString(board.getbIdx());
		mv.setViewName("redirect:selectBoard.do?bIdx="+bIdx);

		return mv;
	}

	@RequestMapping(value = "/selectBoard.do")
	public ModelAndView selectBoard(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, BoardVO vo, HttpServletRequest request, ModelAndView mv) {
		System.out.println("selectBoard  메소드 실행.");
		BoardVO board = boardService.selectBoard(Integer.toString(vo.getbIdx()));
		int intHits = 0;
		String bHits = "";

		if (board.getbHits() != null) {
			intHits = Integer.parseInt(board.getbHits());
			intHits += 1;
			bHits = Integer.toString(intHits);
			board.setbHits(bHits);
		} else {
			bHits = "1";
			board.setbHits(bHits);
		}
		boardService.updateHits(board);

		int listCnt = boardService.countsBoard();

		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setListCnt(listCnt);
		if (listCnt == 0) {
			
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
		List<BReplyVO> selectBReplyList = bReplyService.selectBRelplyList(Integer.toString(vo.getbIdx()));
		System.out.println(selectBReplyList);
		mv.addObject("selectBReplyList", selectBReplyList);
		mv.setViewName("/board/SelectBoard");

		return mv;
	}

	@RequestMapping(value = "/deleteBoard.do", method = RequestMethod.POST)
	public ModelAndView deleteBoard(BoardVO vo, HttpServletRequest request) {
		System.out.println("deleteAdminMedicine-특정 게시글 제거 메소드 실행.");
		String bIdx = Integer.toString(vo.getbIdx());
		System.out.println(bIdx);
		boardService.deleteBoard(bIdx);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:boardList.do");
		return mv;
	}

	@RequestMapping(value = "/updateBoard.do", method = RequestMethod.POST)
	public ModelAndView updateBoard(BoardVO vo, HttpServletRequest request) {
		System.out.println("updateBoard - 게시판 수정페이지로의 단순이동");
		String bIdx = Integer.toString(vo.getbIdx());

		BoardVO board = boardService.selectBoard(bIdx);

		ModelAndView mv = new ModelAndView();
		mv.addObject("board", board);
		mv.setViewName("/board/UpdateBoard");
		return mv;
	}	
	
	@RequestMapping(value = "/searchTextBoard.do")
	public ModelAndView searchTextBoard(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, HttpServletRequest request, String textBoard, String searchCnd, ModelAndView mv) {
		System.out.println("-------------------------------------------");
		System.out.println("searchTextBoard 메소드 실행.");
		System.out.println(searchCnd);
		System.out.println(textBoard);
		Map<String, Object> vo = new HashMap<String, Object>();
		vo.put("searchCnd", searchCnd);
		vo.put("textBoard", textBoard);		
		int listCnt = boardService.searchCountsBoard(vo);
		System.out.println(listCnt);
		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setListCnt(listCnt);
		if (listCnt == 0) {
			mv.addObject("comment0", "검색된결과가 없습니다.");
		} else {
			mdBCounts.setSearchCnd(searchCnd);
			mdBCounts.setTextBoard(textBoard);
			mdBCounts.setPage(curPage, startp, curRange);
			if (result == 1) {
				mdBCounts.prevSetBlock(curRange);

			} else if (result == 2) {
				mdBCounts.nextSetBlock(curRange);
			}

			vo.put("startIndex", mdBCounts.getStartIndex());
			vo.put("endIndex", mdBCounts.getEndIndex());
			List<BoardVO> boardList = boardService.selectsearctBoardList(vo);
			mv.addObject("mdBCounts", mdBCounts);
			mv.addObject("boardList", boardList);
		}
		mv.setViewName("/board/SetSearchBoardList");

		return mv;
	}

	

}
