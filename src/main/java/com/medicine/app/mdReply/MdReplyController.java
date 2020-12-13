package com.medicine.app.mdReply;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.medicine.app.medicine.MedicineService;
import com.medicine.app.medicine.MedicineVO;

@Controller
public class MdReplyController {
	@Autowired
	private MdReplyService mdReplyService;

	@Resource(name = "MedicineService")
	private MedicineService medicineService;
	
	@RequestMapping(value = "/insertmdReply.do")
	public ModelAndView insertmdReply(MdReplyVO vo, HttpServletRequest request, ModelAndView mv) {
		System.out.println("insertmdReply 댓글 추가 메소드 실행.");
		HttpSession session = request.getSession();
		int uIdx = (Integer) session.getAttribute("uIdx");
		vo.setuIdx(uIdx);
		String mdIdx = Integer.toString(vo.getMdIdx());

		mdReplyService.insertMdReplyList(vo);
		MedicineVO medicine = medicineService.selectMedicine(mdIdx);
		List<MdReplyVO> selectMdReplyList = mdReplyService.selectMdReplyList(mdIdx);

		mv.addObject("medicine", medicine);
		mv.addObject("selectMdReplyList", selectMdReplyList);
		mv.setViewName("/medicine/SelectMedicine");
		return mv;
	}

	@RequestMapping(value = "/deleteMdReply.do")
	public ModelAndView deleteMdReply(MdReplyVO vo, HttpServletRequest request, ModelAndView mv) {
		System.out.println("deleteMdReply 댓글 제거 메소드 실행.");
		String uReIdx = Integer.toString(vo.getuReIdx());
		String mdIdx = Integer.toString(vo.getMdIdx());

		mdReplyService.deleteMdReply(uReIdx);
		MedicineVO medicine = medicineService.selectMedicine(mdIdx);
		List<MdReplyVO> selectMdReplyList = mdReplyService.selectMdReplyList(mdIdx);

		mv.addObject("medicine", medicine);
		mv.addObject("selectMdReplyList", selectMdReplyList);
		mv.setViewName("/medicine/SelectMedicine");

		return mv;
	}

}
