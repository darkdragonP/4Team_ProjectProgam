package com.medicine.app.medicine;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class MedicineController {
	@Autowired
	private MedicineService medicineService;
	
	@RequestMapping(value="/medicineList.do")
	public ModelAndView selectmedicineList(HttpServletRequest request){
		System.out.println("selectmedicineList 메소드 실행.");
		
		List<MedicineVO> medicineList = medicineService.selectMedicineList();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("medicineList", medicineList);
		mv.setViewName("/medicine/SetMedicineList");

		return mv;
	}
	@RequestMapping(value="/SelectMedicine.do")
	public ModelAndView selectmedicine(@ModelAttribute MedicineVO vo, HttpServletRequest request){
		System.out.println("selectmedicine  메소드 실행.");
		String mdIdx = Integer.toString(vo.getMdIdx());
		MedicineVO medicine = medicineService.selectMedicine(mdIdx);
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("medicine", medicine);
		mv.setViewName("/medicine/SelectMedicine");

		return mv;
	}
	
	
	
	@RequestMapping(value="/InsertMedicine.do")
	public ModelAndView InsertMedicine(MedicineVO vo,HttpServletRequest request){
		System.out.println("InsertMedicine 메소드 실행.");
		
		medicineService.insertMedicine(vo);
		String maxMdIdx = medicineService.selectMaxMdIdx();
		MedicineVO medicine = medicineService.selectMedicine(maxMdIdx);
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("medicine", medicine);
		mv.setViewName("/admin/SelectAdminMedicine");

		return mv;
	}
	
	@RequestMapping(value="/deleteAdminMedicine.do")
	public ModelAndView deleteAdminMedicine(MedicineVO vo,HttpServletRequest request){
		System.out.println("deleteAdminMedicine 메소드 실행.");
		String mdIdx = Integer.toString(vo.getMdIdx());
		System.out.println(mdIdx);
		medicineService.deleteAdminMedicine(mdIdx);
		System.out.println("정상 삭제처리완료");
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:AdminMedicineList.do");
		return mv;
	}
	
	
	


}
