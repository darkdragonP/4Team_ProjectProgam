package com.medicine.app.uPdPage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.medicine.app.GoogleVisionImage;
import com.medicine.app.MdBoardCounts;
import com.medicine.app.medicine.MedicineService;
import com.medicine.app.medicine.MedicineVO;
import com.medicine.app.user.UserService;
import com.medicine.app.user.UserVO;

@Controller
public class UpdController {
	@Autowired
	private UpdService updService;

	@Resource(name = "MedicineService")
	private MedicineService medicineService;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/UserMainPay.do")
	public ModelAndView UserMainPay(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, ModelAndView mv, HttpServletRequest request) {
		System.out.println("UserMainPay-리스트 이동");
		HttpSession session = request.getSession();
		int uIdx = (Integer) session.getAttribute("uIdx");
		UserVO vi = new UserVO();
		vi.setuIdx(uIdx);
		UserVO selectUser = userService.userDetail(vi);

		int listCnt = updService.countsuPdPage(uIdx);
		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setListCnt(listCnt);
		if (listCnt == 0) {
			System.out.println("등록하신 내역이 없습니다.");
		} else {
			mdBCounts.setPage(curPage, startp, curRange);
			if (result == 1) {
				mdBCounts.prevSetBlock(curRange);

			} else if (result == 2) {
				mdBCounts.nextSetBlock(curRange);
			}

			Map<String, Object> vu = new HashMap<String, Object>();
			vu.put("uIdx", uIdx);
			vu.put("startIndex", Integer.toString(mdBCounts.getStartIndex()));
			vu.put("endIndex", Integer.toString(mdBCounts.getEndIndex()));
			List<UpdVO> updList = updService.selectUpdList(vu);
			mv.addObject("selectUser", selectUser);
			mv.addObject("mdBCounts", mdBCounts);
			mv.addObject("updList", updList);
		}
		mv.setViewName("updPage/UserMainPay");
		return mv;

	}

	@RequestMapping(value = "/InsertUpd.do", method = RequestMethod.POST)
	public ModelAndView InsertUpd(UpdVO vo, ModelAndView mv, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		int uIdx = (Integer) session.getAttribute("uIdx");
		System.out.println("selectUpdList�޼ҵ� ���� ����.");
		System.out.println(vo.getUploadFile().getOriginalFilename());
		System.out.println("----------------------------------------");
		GoogleVisionImage test = new GoogleVisionImage();
		String text = test.onlyText(vo.getUploadFile());

		String[] change_target = text.replace(".", "").split(" |\t|\n|\r");
		for (String j : change_target) {
			System.out.println("----");
			System.out.println(j);
			System.out.println("----");
			List<MedicineVO> selectMedicine = medicineService.searchOcrTextMedicine(j);
			if (selectMedicine == null) {
				System.out.println("결과값이 없습니다.");
			} else {
				for (MedicineVO i : selectMedicine) {
					Map<String, Object> vi = new HashMap<String, Object>();
					vi.put("uIdx", uIdx);
					vi.put("mdIdx", i.getMdIdx());
					vi.put("MdName", i.getMdTitle());
					updService.insertUpd(vi);
				}
			}
		}
		mv.setViewName("redirect:UserMainPay.do");
		return mv;
	}

	@RequestMapping(value = "/deleteOcr.do")
	public ModelAndView deleteOcr(UpdVO vo, HttpServletRequest request, ModelAndView mv) {
		HttpSession session = request.getSession();
		int uIdx = (Integer) session.getAttribute("uIdx");
		System.out.println(uIdx);
		Map<String, Object> vi = new HashMap<String, Object>();
		vi.put("uIdx", uIdx);
		vi.put("ocrIdx", vo.getOcrIdx());
		updService.deleteUpd(vi);

		mv.setViewName("redirect:UserMainPay.do");
		return mv;
	}

	@RequestMapping(value = "/SearchOcr.do")
	public ModelAndView SearchOcr(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, ModelAndView mv, HttpServletRequest request, UpdVO vo)
			throws IOException {
		System.out.println("SearchOcr-리스트 이동");
		GoogleVisionImage test = new GoogleVisionImage();
		String text = test.onlyText(vo.getUploadFile());
		List<String> image = test.ImageSearch(vo.getUploadFile());

		List<MedicineVO> searchMdList = medicineService.searchOcrImageMedicine(text);
		List<Float> type = new ArrayList<Float>();
		String colorResult = null;
		for (String i : image) {
			String[] color = i.split(":");
			type.add(Float.parseFloat(color[0]));
		}
		Float res = Collections.max(type);
		for (String i : image) {
			String[] color = i.split(":");
			if (res == Float.parseFloat(color[0])) {
				colorResult = color[1] + "," + color[2] + "," + color[3];
			}
		}
		System.out.println(colorResult);

		HttpSession session = request.getSession();
		int uIdx = (Integer) session.getAttribute("uIdx");
		UserVO vi = new UserVO();
		vi.setuIdx(uIdx);
		UserVO selectUser = userService.userDetail(vi);
		int listCnt = updService.countsuPdPage(uIdx);
		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setListCnt(listCnt);
		if (listCnt == 0) {
			System.out.println("등록하신 내역이 없습니다.");
		} else {
			mdBCounts.setPage(curPage, startp, curRange);
			if (result == 1) {
				mdBCounts.prevSetBlock(curRange);

			} else if (result == 2) {
				mdBCounts.nextSetBlock(curRange);
			}

			Map<String, Object> vu = new HashMap<String, Object>();
			vu.put("uIdx", uIdx);
			vu.put("startIndex", Integer.toString(mdBCounts.getStartIndex()));
			vu.put("endIndex", Integer.toString(mdBCounts.getEndIndex()));
			vu.put("text", text);
			vu.put("image", colorResult);
			List<UpdVO> updList = updService.selectUpdList(vu);
			mv.addObject("textImage",vu);
			mv.addObject("searchMdList", searchMdList);
			mv.addObject("colorResult", colorResult);
			mv.addObject("selectUser", selectUser);
			mv.addObject("mdBCounts", mdBCounts);
			mv.addObject("updList", updList);
		}
		mv.setViewName("updPage/UserMainPay");
		return mv;

	}

}
