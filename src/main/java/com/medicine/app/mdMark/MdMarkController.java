package com.medicine.app.mdMark;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.medicine.app.mdReply.MdReplyService;
import com.medicine.app.mdReply.MdReplyVO;
import com.medicine.app.medicine.MedicineService;
import com.medicine.app.medicine.MedicineVO;

@Controller
public class MdMarkController {
	@Autowired
	private MdMarkService mdMarkService;

	@Autowired
	private MdReplyService mdReplyService;

	@Resource(name = "MedicineService")
	private MedicineService medicineService;

	@RequestMapping(value = "/insertMdMark.do")
	public ModelAndView insertMdMark(MdMarkVO vo, HttpServletRequest request, ModelAndView mv) {
		System.out.println("insertMdMark 메소드 실행.");
		HttpSession session = request.getSession();
		int uidx =(Integer)session.getAttribute("uIdx");
		vo.setuIdx(uidx);
		String mdIdx = Integer.toString(vo.getMdIdx());
		if (mdMarkService.checkMdMark(vo) == null) {
			mdMarkService.insertMdMark(vo);
		} else {
			System.out.println("이미 별점 주셧습니다.");
		}
		List<MdMarkVO> getMdMrList = mdMarkService.selectMdMark(mdIdx);
		int mr = 0;
		int xe = 0;
		for (MdMarkVO i : getMdMrList) {
			mr += i.getMdMR();
			xe += 1;
		}
		int AvgMr = mr / xe;
		
		MedicineVO medicine = medicineService.selectMedicine(mdIdx);
		medicine.setMdRating(Integer.toString(AvgMr));
		medicineService.updateMdRating(medicine);
		List<MdReplyVO> selectMdReplyList = mdReplyService.selectMdReplyList(mdIdx);
		mv.addObject("medicine", medicine);
		mv.addObject("selectMdReplyList", selectMdReplyList);
		mv.setViewName("/medicine/SelectMedicine");

		return mv;
	}
}
