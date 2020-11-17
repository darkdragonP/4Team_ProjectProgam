package com.medicine.app.user;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/userList.do")
	public ModelAndView selectUserList(HttpServletRequest request){
		System.out.println("selectUserList 메소드 정상 실행.");
		
		List<UserVO> userList = userService.selectUserList();
		System.out.println("결과값 : "+userList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("userList", userList);
		
		mv.setViewName("/user/SetUserList");

		return mv;
	}

}
