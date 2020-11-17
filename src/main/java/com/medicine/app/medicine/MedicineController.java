package com.medicine.app.medicine;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		System.out.println("selectmedicineList 메소드 정상 실행.");
		
		List<MedicineVO> medicineList = medicineService.selectMedicineList();
		System.out.println("결과값 : "+medicineList);
		ModelAndView mv = new ModelAndView();
		mv.addObject("medicineList", medicineList);
		mv.setViewName("/medicine/SetMedicineList");

		return mv;
	}
	@RequestMapping(value="/SelectMedicine.do")
	public ModelAndView selectmedicine(@ModelAttribute MedicineVO vo, HttpServletRequest request){
		System.out.println("selectmedicine 메소드 정상 실행.");
		System.out.println("jsp에서 가져온 값:"+vo);
		System.out.println("해당 값의 타입:"+vo.getClass().getName());
		
		
		String mdIdx = Integer.toString(vo.getMdIdx());
		
		MedicineVO medicine = medicineService.selectMedicine(mdIdx);
		
		System.out.println("결과값 : "+medicine);
		ModelAndView mv = new ModelAndView();
		
		System.out.println("sql에서 받아온 값:"+medicine.getMdCapa());
		mv.addObject("medicine", medicine);
		mv.setViewName("/medicine/SelectMedicine");

		return mv;
	}
	

}
