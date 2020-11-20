package com.medicine.app.bReply;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class BReplyController {
	@Autowired
	private BReplyService bReplyService;
	
	@RequestMapping(value="/bReplyList.do")
	public ModelAndView selectBReplyList(HttpServletRequest request){
		System.out.println("selectBReplyList 메소드 실행.");
		
		List<BReplyVO> bReplyList = bReplyService.selectBRelplyList();
		System.out.println("결과값: "+bReplyList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("bReplyList", bReplyList);
		mv.setViewName("/bReply/SetBReplyList");

		return mv;
	}

}
