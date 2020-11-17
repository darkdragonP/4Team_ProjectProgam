package com.medicine.app.comCode;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class ComCodeController {
	@Autowired
	private ComCodeService comCodeService;
	
	@RequestMapping(value="/comCodeList.do")
	public ModelAndView selectComCodeList(HttpServletRequest request){
		System.out.println("selectComCodeList 메소드 정상 실행.");
		
		List<ComCodeVO> comCodeList = comCodeService.selectComCodeList();
		System.out.println("결과값 : "+comCodeList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("comCodeList", comCodeList);
		mv.setViewName("/comCode/SetComCodeList");
		
		return mv;
	}
}
