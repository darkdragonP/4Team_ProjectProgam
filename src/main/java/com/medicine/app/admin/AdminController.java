package com.medicine.app.admin;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.medicine.app.user.UserVO;



@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="/adminMain.do")
	public ModelAndView adminMain(HttpServletRequest request){
		System.out.println("adminMain 임시 메소드 실행.");
		
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("/admin/AdminMain");

		return mv;
	}

	@RequestMapping(value="/GoogleAnalytics.do")
	public ModelAndView selectAdminList(HttpServletRequest request){
		System.out.println("GoogleAnalytics 임시 메소드 실행.");
		
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("/admin/GoogleAnalytics");
		
		return mv;
	}
	
	
	@RequestMapping(value="/AdminMedicineList.do")
	public ModelAndView AdminMedicineList(HttpServletRequest request){
		System.out.println("AdminMedicineList 임시 메소드 실행.");
		
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("/admin/AdminMedicineList");
		
		return mv;
	}
	
	@RequestMapping(value="/AdminInsertMedicine.do")
	public ModelAndView AdminInsertMedicine(HttpServletRequest request){
		System.out.println("AdminInsertMedicine 임시 메소드 실행.");
		
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("/admin/AdminInsertMedicine");
		
		return mv;
	}
	
	
	
	
	
	
}
