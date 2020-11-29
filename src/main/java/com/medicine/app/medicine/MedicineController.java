package com.medicine.app.medicine;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.medicine.app.MdBoardCounts;
import com.medicine.app.mdReply.MdReplyService;
import com.medicine.app.mdReply.MdReplyVO;

@Controller
public class MedicineController {
	@Resource(name = "MedicineService")
	private MedicineService medicineService;

	@Autowired
	private MdReplyService mdReplyService;

	@RequestMapping(value = "/medicineList.do")
	public ModelAndView selectmedicineList(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, HttpServletRequest request, ModelAndView mv) {
		System.out.println("selectmedicineList 메소드 실행.");
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
		List<MedicineVO> medicineList = medicineService.selectMedicineList(vo);
		mv.addObject("mdBCounts", mdBCounts);
		mv.addObject("medicineList", medicineList);

		mv.setViewName("/medicine/SetMedicineList");

		return mv;
	}

	@RequestMapping(value = "/SelectMedicine.do", method = RequestMethod.GET)
	public ModelAndView selectmedicine(MedicineVO vo, HttpServletRequest request, ModelAndView mv) {
		System.out.println("selectmedicine  메소드 실행.");
		System.out.println(vo.getMdIdx());
		String mdIdx = Integer.toString(vo.getMdIdx());
		MedicineVO medicine = medicineService.selectMedicine(mdIdx);

		int intHits = 0;
		String mdHits = "";

		if (medicine.getMdHits() != null) {
			intHits = Integer.parseInt(medicine.getMdHits());
			intHits += 1;
			mdHits = Integer.toString(intHits);
			medicine.setMdHits(mdHits);
		} else {
			mdHits = "1";
			medicine.setMdHits(mdHits);
		}
		medicineService.updateHits(medicine);
		mv.addObject("medicine", medicine);

		List<MdReplyVO> selectMdReplyList = mdReplyService.selectMdReplyList();
		mv.addObject("selectMdReplyList", selectMdReplyList);

		mv.setViewName("/medicine/SelectMedicine");

		return mv;
	}

	@RequestMapping(value = "/searchTextMedicine.do")
	public ModelAndView searchTextMedicine(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, String textMedicine, HttpServletRequest request,
			ModelAndView mv) {
		System.out.println("serchTextMedicine 약 텍스트검색 메소드 실행.");
		int listCnt = medicineService.searchCountMedicine(textMedicine);
		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setTextMedicine(textMedicine);
		mdBCounts.setListCnt(listCnt);
		mdBCounts.setPage(curPage, startp, curRange);
		if (result == 1) {
			mdBCounts.prevSetBlock(curRange);

		} else if (result == 2) {
			mdBCounts.nextSetBlock(curRange);
		}
		System.out.println("검색키워드 :" + mdBCounts.getTextMedicine());
		System.out.println("시작인덱스 :" + mdBCounts.getStartIndex());
		System.out.println("종료인덱스 :" + mdBCounts.getEndIndex());
		System.out.println("시작페이지 :" + mdBCounts.getStartPage());
		System.out.println("현재페이지 :" + mdBCounts.getCurPage());
		System.out.println("종료페이지 :" + mdBCounts.getEndPage());
		System.out.println("현재블럭 :" + mdBCounts.getCurRange() + "+1");
		System.out.println("최종블럭 :" + mdBCounts.getRangeCnt());

		Map<String, String> vo = new HashMap<String, String>();

		vo.put("startIndex", Integer.toString(mdBCounts.getStartIndex()));
		vo.put("endIndex", Integer.toString(mdBCounts.getEndIndex()));
		vo.put("text", mdBCounts.getTextMedicine());
		System.out.println("1 메소");
		List<MedicineVO> medicineList = medicineService.searchTextMedicine(vo);
		mv.addObject("mdBCounts", mdBCounts);
		mv.addObject("medicineList", medicineList);
		mv.setViewName("/medicine/TextSearchMedicineList");

		return mv;

	}

	@RequestMapping(value = "/searchRadioMedicine.do")
	public ModelAndView searchRadioMedicine(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, String mdShape, String mdColor, String mdType, String mdLine,
			HttpServletRequest request, ModelAndView mv) {
		System.out.println("searchRadioMedicine 약 모양검색 메소드 실행.");
		Map<String, String> searchRadio = new HashMap<String, String>();
		searchRadio.put("mdShape", mdShape);
		searchRadio.put("mdColor", mdColor);
		searchRadio.put("mdType", mdType);
		searchRadio.put("mdLine", mdLine);
		int listCnt = medicineService.searchCountMedicine2(searchRadio);

		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setMdColor(mdColor);
		mdBCounts.setMdShape(mdShape);
		mdBCounts.setMdLine(mdLine);
		mdBCounts.setMdType(mdType);
		mdBCounts.setListCnt(listCnt);
		mdBCounts.setPage(curPage, startp, curRange);
		if (result == 1) {
			mdBCounts.prevSetBlock(curRange);

		} else if (result == 2) {
			mdBCounts.nextSetBlock(curRange);
		}
		System.out.println("검색키워드 :" + mdBCounts.getTextMedicine());
		System.out.println("시작인덱스 :" + mdBCounts.getStartIndex());
		System.out.println("종료인덱스 :" + mdBCounts.getEndIndex());
		System.out.println("시작페이지 :" + mdBCounts.getStartPage());
		System.out.println("현재페이지 :" + mdBCounts.getCurPage());
		System.out.println("종료페이지 :" + mdBCounts.getEndPage());
		System.out.println("현재블럭 :" + mdBCounts.getCurRange() + "+1");
		System.out.println("최종블럭 :" + mdBCounts.getRangeCnt());

		searchRadio.put("startIndex", Integer.toString(mdBCounts.getStartIndex()));
		searchRadio.put("endIndex", Integer.toString(mdBCounts.getEndIndex()));

		List<MedicineVO> medicineList = medicineService.searchRadioMedicine(searchRadio);
		mv.addObject("mdBCounts", mdBCounts);
		mv.addObject("medicineList", medicineList);
		mv.setViewName("/medicine/ShapeSearchMedicineList");
		return mv;

	}

}
