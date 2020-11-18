package com.medicine.app.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="/boardList.do")
	public ModelAndView selectBoardList(HttpServletRequest request){
		System.out.println("selectBoardList 메소드 실행.");
		
		List<BoardVO> boardList = boardService.selectBoardList();
		System.out.println("결과값: "+boardList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("boardList", boardList);
		mv.setViewName("/board/BoradList");

		return mv;
	}
	
	@RequestMapping(value="/insertBoard.do")
	public ModelAndView InsertBoard(HttpServletRequest request){
		System.out.println("insertBoard 임시 메소드 실행.");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/InsertBoard");
		
		return mv;
	}
	
	@RequestMapping(value="/updateBoard.do")
	public ModelAndView UpdateBoard(HttpServletRequest request){
		System.out.println("UpdateBoard 임시 메소드 실행.");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/UpdateBoard");
		
		return mv;
	}
	
	@RequestMapping(value="/selectBoard.do")
	public ModelAndView selectBoard(HttpServletRequest request){
		System.out.println("selectBoard 임시 메소드 실행.");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/SelectBoard");
		
		return mv;
	}
	
	
	
	
}
