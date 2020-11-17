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
		System.out.println("selectBoardList 메소드 정상 실행.");
		
		List<BoardVO> boardList = boardService.selectBoardList();
		System.out.println("결과값 : "+boardList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("boardList", boardList);
		mv.setViewName("/board/SetBoradList");

		return mv;
	}
	
	
	
	
}
