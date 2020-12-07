package com.medicine.app.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/userList.do")
	public ModelAndView selectUserList(HttpServletRequest request, ModelAndView mv) {
		System.out.println("selectUserList 메소드 정상 실행.");

		List<UserVO> userList = userService.selectUserList();
		System.out.println("결과값 : " + userList);
		mv.addObject("userList", userList);

		mv.setViewName("/user/SetUserList");

		return mv;
	}

	@RequestMapping(value = "/UserMain.do")
	public ModelAndView UserMain(HttpServletRequest request, ModelAndView mv) {
		System.out.println("UserMain-관리자페이지로의 단순이동");
		mv.setViewName("/user/UserMain");
		return mv;
	}

	@RequestMapping(value = "/UserMainPay.do")
	public ModelAndView UserMainPay(HttpServletRequest request, ModelAndView mv) {
		System.out.println("UserMainPay-관리자페이지로의 단순이동");
		mv.setViewName("/user/UserMainPay");
		return mv;
	}

	@RequestMapping(value = "/UserOcrSearch.do")
	public ModelAndView UserOcrSearch(HttpServletRequest request, ModelAndView mv) {
		System.out.println("UserOcrSearch-OCR페이지로의 단순이동");
		mv.setViewName("/user/UserOcrSearch");
		return mv;
	}

	@RequestMapping(value = "/UserOcrTextSearch.do")
	public ModelAndView UserOcrTextSearch(HttpServletRequest request, ModelAndView mv) {
		System.out.println("UserOcrTextSearch -[사용자페이지]OCR 상세조회 페이지로의 단순이동");
		mv.setViewName("/user/UserOcrTextSearch");
		return mv;
	}

	@RequestMapping(value = "/findID.do")
	public ModelAndView exercise1(HttpServletRequest request, ModelAndView mv) {
		System.out.println("findID 임시 메소드 실행");

		mv.setViewName("/user/findID");
		return mv;
	}

	@RequestMapping(value = "/findPW.do")
	public ModelAndView exercise4(HttpServletRequest request, ModelAndView mv) {
		System.out.println("findPW 임시 메소드 실행");

		mv.setViewName("/user/findPW");
		return mv;
	}

	@RequestMapping(value = "/login.do")
	public ModelAndView exercise2(HttpServletRequest request, ModelAndView mv) {
		System.out.println("login 임시 메소드 실행.");

		mv.setViewName("/user/login");
		return mv;
	}

	@RequestMapping(value = "/register.do")
	public ModelAndView exercise3(HttpServletRequest request, ModelAndView mv) {
		System.out.println("register 임시 메소드 실행.");

		mv.setViewName("/user/register");
		return mv;		
	}

	@RequestMapping(value = "/UserMediCompare.do")
	public ModelAndView exercise5(HttpServletRequest request, ModelAndView mv) {
		System.out.println("UserMediCompare 임시 메소드 실행.");
		
		mv.setViewName("/user/UserMediCompare");
		return mv;		
	}
	@RequestMapping(value = "/UserMedicineDetail.do")
	public ModelAndView exercise6(HttpServletRequest request, ModelAndView mv) {
		System.out.println("처방전 비교하기에서 사용되는 처방전 디테일페이지입니다.");
		
		mv.setViewName("/user/UserMedicineDetail");
		return mv;		
	}

	// 회원정보
	@RequestMapping(value = "/detailUser.do")
	public ModelAndView userdetail(UserVO vo, HttpServletRequest request, HttpSession session, ModelAndView mv) {
		System.out.println("userdetail회원정보페이지 이동");

		int uIdx = (Integer) session.getAttribute("uIdx");
		vo.setUIdx(uIdx);
		System.out.println(uIdx);
		UserVO selectUser = userService.userDetail(vo);

		mv.addObject("selectUser", selectUser);
		mv.setViewName("/user/userdetail");
		return mv;
	}

	// 회원가입
	@RequestMapping(value = "/insert_Reg.do", method = RequestMethod.POST)
	public ModelAndView insert_Reg(UserVO vo, HttpServletRequest request, ModelAndView mv) {
		System.out.println("insert_Reg 메소드 실행");
		System.out.println(vo);

		userService.insert_Reg(vo);

		mv.setViewName("/user/login");
		return mv;
	}

	// 회원수정
	@RequestMapping(value = "/update_user.do", method = RequestMethod.POST)
	public ModelAndView update_user(UserVO vo, HttpServletRequest request, ModelAndView mv) {
		System.out.println("update_user 메소드 실행");
		System.out.println(vo);
		userService.update_user(vo);

		mv.setViewName("../../main");
		return mv;
	}

	// 회원삭제 페이지 이동
	@RequestMapping(value = "/userDelete.do", method = RequestMethod.GET)
	public ModelAndView userDelete(UserVO vo, HttpServletRequest request, ModelAndView mv) {
		System.out.println("userDelete 메소드 실행");
		System.out.println(vo);

		mv.setViewName("user/userDelete");
		return mv;
	}

	// 진짜 회원삭제
	@RequestMapping(value = "/realUserDelete.do", method = RequestMethod.POST)
	public ModelAndView realUserDelete(UserVO vo, HttpServletRequest request, HttpSession session, ModelAndView mv) {
		System.out.println("진짜삭제한다");
		int uIdx = (Integer) session.getAttribute("uIdx");
		vo.setUIdx(uIdx);
		System.out.println(uIdx);

		UserVO selectUser = userService.delete_user(vo);
		session.removeAttribute("uIdx");
		session.removeAttribute("userID");
		session.removeAttribute("userPW");
		session.invalidate();

		mv.addObject("selectUser", selectUser);
		mv.setViewName("../../main");
		return mv;
	}

	// 로그인
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ModelAndView login(UserVO vo, HttpServletRequest request, HttpSession session, ModelAndView mv) {
		System.out.println("로그인실행");
		System.out.println(vo);
		String id = request.getParameter("userID");
		String password = request.getParameter("userPW");

		vo.setUserID(id);
		vo.setUserPW(password);

		System.out.println("아이디 : " + vo.getUserID());
		System.out.println("비밀번호 : " + vo.getUserPW());

		UserVO user = userService.login(vo);

		if (user != null) {
			session.setAttribute("uIdx", user.getUIdx());
			session.setAttribute("userID", user.getUserID());
			session.setAttribute("userPW", user.getUserPW());
			mv.setViewName("../../main");
			return mv;
		} else {
			mv.setViewName("/user/login");
			return mv;
		}
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpSession session) {
		if (session != null)
			session.removeAttribute("uIdx");
		session.removeAttribute("userID");
		session.removeAttribute("userPW");
		session.invalidate();
		return "../../main";
	}

	// 아이디 중복 확인
	@RequestMapping(value = "idoverlap")
	public @ResponseBody String idoverlap(@RequestParam("userID") String id) {
		// json형식으로 보낸걸 받기위해 사용 : @ResponseBody
		String resultMsg = userService.idoverlap(id);
		System.out.println(resultMsg);
		return resultMsg;
	}

	// 아이디 찾기
	@ResponseBody
	@RequestMapping(value = "findingId.do", method = RequestMethod.POST, produces = "application/text; charset=utf-8")
	public String findingId(UserVO vo, Model model){
		ArrayList<String> IDlList = userService.findId(vo);
		String findId = "{\"userID\":\"" + IDlList + "\"}";
		System.out.println(findId);
		return IDlList.get(0);
	}
	// 비밀번호 찾기
	@ResponseBody
	@RequestMapping(value = "findingPw.do", method = RequestMethod.POST, produces = "application/text; charset=utf-8")
	public String findingPw(UserVO vo, Model model){
		ArrayList<String> PWlList = userService.findPw(vo);
		String findPw = "{\"userPW\":\"" + PWlList + "\"}";
		System.out.println(findPw);
		return PWlList.get(0);
	}
	//네이버 로그인 오픈
	@RequestMapping(value = "/naverlogin.do")
	public String NaverCallback(HttpSession session)throws IOException {
		System.out.println("네이버 로그인 ");
		session.invalidate();
		return "redirect:login2.do";
	}
	
	// 네이버 로그인
	@RequestMapping(value = "/naverpopup.do", method = RequestMethod.POST)
	public ModelAndView NaverLogin(UserVO vo, HttpServletRequest request, HttpSession session, ModelAndView mv) {
		System.out.println("네이버 로그인실행");
		System.out.println(vo);
		String id = request.getParameter("naverid");
		String password = request.getParameter("naverpw");

		vo.setUserID(id);
		vo.setUserPW(password);

		System.out.println("아이디 : " + vo.getUserID());
		System.out.println("비밀번호 : " + vo.getUserPW());

		UserVO user = userService.login(vo);

		if (user != null) {
			session.setAttribute("uIdx", user.getUIdx());
			session.setAttribute("userID", user.getUserID());
			session.setAttribute("userPW", user.getUserPW());
			mv.setViewName("../../main");
			return mv;
		} else {
			mv.setViewName("/user/login");
			return mv;
		}
	}
	
}
