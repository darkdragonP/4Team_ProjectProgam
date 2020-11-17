package com.medicine.app.bMark;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class BMarkController {
	@Autowired
	private BMarkService bMarkService;
	
	@RequestMapping(value="/bMarkdList.do")
	public ModelAndView selectBMarkList(HttpServletRequest request){
		System.out.println("selectBmarkList 메소드 정상 실행.");
		
		List<BMarkVO> bMarkList = bMarkService.selectBMarkList();
		System.out.println("결과값 : "+bMarkList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("bMarkList", bMarkList);
		mv.setViewName("/bMark/SetBMarkList");

		return mv;
	}

}
