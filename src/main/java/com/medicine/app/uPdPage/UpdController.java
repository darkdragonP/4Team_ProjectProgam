package com.medicine.app.uPdPage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class UpdController {
	@Autowired
	private UpdService updService;
	
	@RequestMapping(value="/updList.do")
	public ModelAndView selectUpdList(HttpServletRequest request){
		System.out.println("selectUpdList메소드 정상 실행.");
		
		List<UpdVO> updList = updService.selectUpdList();
		System.out.println("결과값 : "+updList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("updList", updList);
		mv.setViewName("/updPage/SetUpdList");

		return mv;
	}
}
