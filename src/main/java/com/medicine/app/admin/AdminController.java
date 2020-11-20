package com.medicine.app.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.medicine.app.medicine.MedicineService;
import com.medicine.app.medicine.MedicineVO;
import com.medicine.app.user.UserVO;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;

	@Autowired
	private MedicineService medicineService;
	
	@RequestMapping(value = "/adminMain.do")
	public ModelAndView adminMain(HttpServletRequest request) {
		System.out.println("adminMain-관리자페이지로의 단순이동");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/AdminMain");
		return mv;
	}
	@RequestMapping(value = "/AdminMedicineList.do")
	public ModelAndView AdminMedicineList(HttpServletRequest request) {
		System.out.println("AdminMedicineList-[관리자] 약리스트 조회 페이지로의 단순이동");

		List<MedicineVO> AdminMedicineList = adminService.selectAdminMedicineList();
		System.out.println("출력값: " + AdminMedicineList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("AdminMedicineList", AdminMedicineList);
		mv.setViewName("/admin/AdminMedicineList");
		return mv;
	}
	
	
	@RequestMapping(value = "/AdminInsertMedicine.do")
	public ModelAndView AdminInsertMedicine(HttpServletRequest request) {
		System.out.println("AdminInsertMedicine -[관리자페이지]약 추가페이지로의 단순이동");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/AdminInsertMedicine");
		return mv;
	}
	@RequestMapping(value = "/GoogleAnalytics.do")
	public ModelAndView selectAdminList(HttpServletRequest request) {
		System.out.println("GoogleAnalytics-[관리자] 구글 페이지 단순 이동.");

		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/GoogleAnalytics");
		return mv;
	}

		@RequestMapping(value="/SelectAdminMedicine.do")
		public ModelAndView selectmedicine(@ModelAttribute MedicineVO vo, HttpServletRequest request){
			System.out.println("selectmedicine  메소드 실행.");
			System.out.println("jsp에서 전달받은 변수 값:"+vo);
			
			System.out.println("전달받은 값의 자료형:"+vo.getClass().getName());
			
			
			String mdIdx = Integer.toString(vo.getMdIdx());
			
			MedicineVO medicine = medicineService.selectMedicine(mdIdx);
			
			System.out.println("sql출력값: "+medicine);
			ModelAndView mv = new ModelAndView();
			
			mv.addObject("medicine", medicine);
			mv.setViewName("/admin/SelectAdminMedicine");

			return mv;
		}
	
	
	

}
