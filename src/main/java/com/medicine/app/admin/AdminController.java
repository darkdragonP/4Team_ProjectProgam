package com.medicine.app.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.medicine.app.MdBoardCounts;
import com.medicine.app.medicine.MedicineService;
import com.medicine.app.medicine.MedicineVO;

@Controller
public class AdminController {

	@Resource(name = "MedicineService")
	private MedicineService medicineService;

	@Resource(name = "AdminMedicineService")
	private MedicineService adminService;

	@RequestMapping(value = "/adminMain.do")
	public ModelAndView adminMain(HttpServletRequest request) {
		System.out.println("adminMain-관리자페이지로의 단순이동");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/AdminMain");
		return mv;
	}

	@RequestMapping(value = "/AdminInsertMedicine.do")
	public ModelAndView AdminInsertMedicine(HttpServletRequest request) {
		System.out.println("AdminInsertMedicine -[관리자]약 추가페이지로의 단순이동");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/AdminInsertMedicine");
		return mv;
	}

	@RequestMapping(value = "/updateAdminMedicine.do")
	public ModelAndView updateAdminMedicine(MedicineVO vo, HttpServletRequest request) {
		System.out.println("AdminInsertMedicine -[관리자]약 수정페이지로의 단순이동");
		String mdIdx = Integer.toString(vo.getMdIdx());

		MedicineVO medicine = adminService.selectMedicine(mdIdx);

		ModelAndView mv = new ModelAndView();
		mv.addObject("medicine", medicine);
		mv.setViewName("/admin/AdminUpdateMedicine");
		return mv;
	}

	@RequestMapping(value = "/GoogleAnalytics.do")
	public ModelAndView selectAdminList(HttpServletRequest request) {
		System.out.println("GoogleAnalytics-[관리자] 구글 페이지 단순이동.");

		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/GoogleAnalytics");
		return mv;
	}

	@RequestMapping(value = "/AdminMedicineList.do")
	public ModelAndView AdminMedicineList(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, HttpServletRequest request, ModelAndView mv) {
		System.out.println("AdminMedicineList 메소드 실행.");
		int listCnt = medicineService.countsMedicine();
		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setListCnt(listCnt);
		mdBCounts.setPage(curPage, startp, curRange);
		if (result == 1) {
			mdBCounts.prevSetBlock(curRange);

		} else if (result == 2) {
			mdBCounts.nextSetBlock(curRange);
		}
		System.out.println("시작인덱스 :" + mdBCounts.getStartIndex());
		System.out.println("종료인덱스 :" + mdBCounts.getEndIndex());
		System.out.println("시작페이지 :" + mdBCounts.getStartPage());
		System.out.println("현재페이지 :" + mdBCounts.getCurPage());
		System.out.println("종료페이지 :" + mdBCounts.getEndPage());
		System.out.println("현재블럭 :" + mdBCounts.getCurRange() + "+1");
		System.out.println("최종블럭 :" + mdBCounts.getRangeCnt());

		Map<String, Integer> vo = new HashMap<String, Integer>();

		vo.put("startIndex", mdBCounts.getStartIndex());
		vo.put("endIndex", mdBCounts.getEndIndex());
		List<MedicineVO> AdminMedicineList = medicineService.selectMedicineList(vo);
		mv.addObject("mdBCounts", mdBCounts);
		mv.addObject("AdminMedicineList", AdminMedicineList);
		mv.setViewName("/admin/AdminMedicineList");
		return mv;
	}

	@RequestMapping(value = "/SelectAdminMedicine.do")
	public ModelAndView selectmedicine(@ModelAttribute MedicineVO vo, HttpServletRequest request) {
		System.out.println("selectmedicine-[관리자]  특정 약 조회 메소드.");

		String mdIdx = Integer.toString(vo.getMdIdx());

		MedicineVO medicine = adminService.selectMedicine(mdIdx);

		System.out.println("sql출력값: " + medicine);
		ModelAndView mv = new ModelAndView();

		mv.addObject("medicine", medicine);
		mv.setViewName("/admin/SelectAdminMedicine");

		return mv;
	}

	@RequestMapping(value = "/InsertMedicine.do")
	public ModelAndView InsertMedicine(MedicineVO vo, HttpServletRequest request) {
		System.out.println("InsertMedicine-[관리자] 약 추가 메소드 실행.");

		adminService.insertMedicine(vo);
		String maxMdIdx = adminService.selectMaxMdIdx();
		MedicineVO medicine = adminService.selectMedicine(maxMdIdx);

		ModelAndView mv = new ModelAndView();
		mv.addObject("medicine", medicine);
		mv.setViewName("/admin/SelectAdminMedicine");

		return mv;
	}

	@RequestMapping(value = "/deleteAdminMedicine.do")
	public ModelAndView deleteAdminMedicine(MedicineVO vo, HttpServletRequest request) {
		System.out.println("deleteAdminMedicine-[관리자] 특정 약 제거 메소드 실행.");
		String mdIdx = Integer.toString(vo.getMdIdx());
		System.out.println(mdIdx);
		adminService.deleteAdminMedicine(mdIdx);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:AdminMedicineList.do");
		return mv;
	}

	@RequestMapping(value = "/updateAdminMedicine2.do")
	public ModelAndView updateAdminMedicine2(MedicineVO vo, HttpServletRequest request) {
		System.out.println("updateAdminMedicine-[관리자] 특정 약 수정 메소드 실행.");
		String mdIdx = Integer.toString(vo.getMdIdx());
		System.out.println(mdIdx);
		adminService.updateAdminMedicine(vo);
		MedicineVO medicine = adminService.selectMedicine(mdIdx);

		ModelAndView mv = new ModelAndView();
		mv.addObject("medicine", medicine);
		mv.setViewName("/admin/SelectAdminMedicine");
		// mv.setViewName("redirect:AdminMedicineList.do?uIdx"=);
		return mv;
	}

}
