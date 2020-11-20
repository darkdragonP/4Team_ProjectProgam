package com.medicine.app.qna;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class QnAController {
	@Autowired
	private QnAService qnaService;
	
	@RequestMapping(value="/qnaList.do")
	public ModelAndView selectQnAList(HttpServletRequest request){
		System.out.println("selectQnAList 메소드 실행.");
		
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("/qna/QnAList");

		return mv;
	}
	
	@RequestMapping(value="/Contact.do")
	public ModelAndView Contact(HttpServletRequest request){
		System.out.println("Contact 메소드 실행.");
		
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("/aboutUs/Contact");

		return mv;
	}

	

}
