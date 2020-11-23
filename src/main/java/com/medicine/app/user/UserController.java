package com.medicine.app.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/userList.do")
	public ModelAndView selectUserList(HttpServletRequest request) {
		System.out.println("selectUserList 메소드 정상 실행.");

		List<UserVO> userList = userService.selectUserList();
		System.out.println("결과값 : " + userList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("userList", userList);

		mv.setViewName("/user/SetUserList");

		return mv;
	}

	@RequestMapping(value = "/findIDPW.do")
	public ModelAndView exercise1(HttpServletRequest request) {
		System.out.println("findIDPW 임시 메소드 실행");

		ModelAndView mv = new ModelAndView();
		mv.setViewName("/user/findIDPW");
		return mv;
	}

	@RequestMapping(value = "/login.do")
	public ModelAndView exercise2(HttpServletRequest request) {
		System.out.println("login 임시 메소드 실행.");

		ModelAndView mv = new ModelAndView();
		mv.setViewName("/user/login");
		return mv;
	}

	@RequestMapping(value = "/register.do")
	public ModelAndView exercise3(HttpServletRequest request) {
		System.out.println("register 임시 메소드 실행.");

		ModelAndView mv = new ModelAndView();
		mv.setViewName("/user/register");
		return mv;
	}

	// 회원정보
	@RequestMapping(value = "/detailUser.do")
	public ModelAndView userdetail(UserVO vo, HttpServletRequest request) {
		System.out.println("userdetail회원정보페이지 이동");
		System.out.println(vo);
		System.out.println(vo.getClass().getName());
		String uIdx = Integer.toString(vo.getuIdx());

		UserVO selectUser = userService.userDetail(uIdx);
		ModelAndView mv = new ModelAndView();
		mv.addObject("selectUser", selectUser);
		mv.setViewName("/user/userdetail");
		return mv;
	}

	// 회원가입
	@RequestMapping(value = "/insert_Reg.do", method = RequestMethod.POST)
	public ModelAndView insert_Reg(UserVO vo, HttpServletRequest request) {
		System.out.println("insert_Reg 메소드 실행");
		System.out.println(vo);

		userService.insert_Reg(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/user/login");
		return mv;
	}

	// 회원수정
	@RequestMapping(value = "/update_user.do", method = RequestMethod.POST)
	public ModelAndView update_user(UserVO vo, HttpServletRequest request) {
		System.out.println("update_user 메소드 실행");
		System.out.println(vo);
		userService.update_user(vo);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("/user/update_user.do");
		return mv;
	}

	// 로그인
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ModelAndView login(UserVO vo, HttpServletRequest request, HttpSession session) {
		System.out.println("로그인실행");
		System.out.println(vo);

		String id = request.getParameter("userID");
		String password = request.getParameter("userPW");

		vo.setUserID(id);
		vo.setUserPW(password);

		System.out.println("아이디 : " + vo.getUserID());
		System.out.println("비밀번호 : " + vo.getUserPW());

		UserVO user = userService.login(vo);

		ModelAndView mav = new ModelAndView();
		if (user != null) {
			session.setAttribute("user", user);
			mav.setViewName("../../main");
			return mav;
		} else {
			mav.setViewName("/user/login");
			return mav;
		}

	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session= request.getSession();
		if(session != null)
			session.invalidate();
		return "../../main";
	}
	
	 
}
