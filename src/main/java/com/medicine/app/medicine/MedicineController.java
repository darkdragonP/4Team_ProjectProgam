package com.medicine.app.medicine;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.medicine.app.MdBoardCounts;
import com.medicine.app.ThreadVO;
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
		int listCnt = medicineService.countsMedicine();
		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setListCnt(listCnt);
		if (listCnt == 0) {
			System.out.println("현재 자료가 없습니다.");
			mv.addObject("comment", "현재 자료가 없습니다.");
		} else {

			mdBCounts.setPage(curPage, startp, curRange);
			if (result == 1) {
				mdBCounts.prevSetBlock(curRange);

			} else if (result == 2) {
				mdBCounts.nextSetBlock(curRange);
			}

			Map<String, Integer> vo = new HashMap<String, Integer>();

			vo.put("startIndex", mdBCounts.getStartIndex());
			vo.put("endIndex", mdBCounts.getEndIndex());
			List<MedicineVO> medicineList = medicineService.selectMedicineList(vo);
			mv.addObject("mdBCounts", mdBCounts);
			mv.addObject("medicineList", medicineList);

		}
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

		List<MdReplyVO> selectMdReplyList = mdReplyService.selectMdReplyList(mdIdx);
		mv.addObject("selectMdReplyList", selectMdReplyList);

		mv.setViewName("/medicine/SelectMedicine");

		return mv;
	}

	@RequestMapping(value = "/searchTextMedicine.do")
	public ModelAndView searchTextMedicine(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, String textMedicine, HttpServletRequest request,
			ModelAndView mv) {
		System.out.println("-------------------------------------------");
		System.out.println("serchTextMedicine 약 텍스트검색 메소드 실행.");
		int listCnt1 = medicineService.countsMedicine();
		int listCnt = medicineService.searchCountMedicine(textMedicine);
		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setTextMedicine(textMedicine);
		mdBCounts.setListCnt(listCnt);
		if (listCnt == 0) {
			System.out.println("검색된결과가 없습니다.");
			mv.addObject("comment", "검색된 결과가 없습니다.");
		} else {
			mdBCounts.setPage(curPage, startp, curRange);
			if (result == 1) {
				mdBCounts.prevSetBlock(curRange);

			} else if (result == 2) {
				mdBCounts.nextSetBlock(curRange);
			}
			Map<String, String> vo = new HashMap<String, String>();
			vo.put("startIndex", Integer.toString(mdBCounts.getStartIndex()));
			vo.put("endIndex", Integer.toString(mdBCounts.getEndIndex()));
			vo.put("text", mdBCounts.getTextMedicine());

			List<MedicineVO> medicineList = null;
			if (listCnt1 > 5000) {
				ThreadVO vv = new ThreadVO(listCnt1);
				Thread1 thread1 = new Thread1(vo, listCnt1, vv);
				Thread2 thread2 = new Thread2(vo, listCnt1, vv);
				Thread3 thread3 = new Thread3(vo, listCnt1, vv);
				Thread4 thread4 = new Thread4(vo, listCnt1, vv);
				Thread5 thread5 = new Thread5(vo, listCnt1, vv);
				thread1.run();
				thread2.run();
				thread3.run();
				thread4.run();
				thread5.run();

				while (true) {

					if (thread1.medicineList == null) {
						System.out.println("1번쓰레드 도는중?");
						continue;
					} else if (thread1.result == "없다") {
						System.out.println("1번쓰레드 겸색완료");
						break;

					} else if (thread1.medicineList != null) {
						System.out.println("1번쓰레드 검색완료");
						if (medicineList == null) {
							medicineList = thread1.medicineList;
						} else {

							medicineList.addAll(thread1.medicineList);
						}
						break;
					}
				}
				while (true) {
					if (thread2.medicineList == null) {
						System.out.println("2번쓰레드 도는중?");
						continue;
					} else if (thread2.result == "없다") {
						System.out.println("2번쓰레드 겸색완료");
						break;

					} else if (thread2.medicineList != null) {
						System.out.println("2번쓰레드 검색완료");
						if (medicineList == null) {
							medicineList = thread2.medicineList;
						} else {
							medicineList.addAll(thread2.medicineList);
						}
						break;
					}
				}
				while (true) {
					if (thread3.medicineList == null) {
						System.out.println("3번쓰레드 도는중?");
						continue;
					} else if (thread3.result == "없다") {
						System.out.println("3번쓰레드 겸색완료");
						break;

					} else if (thread3.medicineList != null) {
						System.out.println("3번쓰레드 검색완료");
						if (medicineList == null) {
							medicineList = thread3.medicineList;
						} else {
							medicineList.addAll(thread3.medicineList);
						}
						break;
					}
				}
				while (true) {
					if (thread4.medicineList == null) {
						System.out.println("4번쓰레드 도는중?");
						continue;
					} else if (thread4.result == "없다") {
						System.out.println("4번쓰레드 겸색완료");
						break;

					} else if (thread4.medicineList != null) {
						System.out.println("4번쓰레드 검색완료");
						if (medicineList == null) {
							medicineList = thread4.medicineList;
						} else {
							medicineList.addAll(thread4.medicineList);
						}
						break;
					}
				}
				while (true) {
					if (thread5.medicineList == null) {
						System.out.println("5번쓰레드 도는중?");
						continue;
					} else if (thread5.result == "없다") {
						System.out.println("5번쓰레드 겸색완료");
						break;

					} else if (thread5.medicineList != null) {
						System.out.println("5번쓰레드 검색완료");
						if (medicineList == null) {
							medicineList = thread5.medicineList;
						} else {
							medicineList.addAll(thread5.medicineList);
						}
						break;
					}
				}

			} else {
				medicineList = medicineService.searchTextMedicine(vo);
			}

			System.out.println(medicineList);
			mv.addObject("mdBCounts", mdBCounts);
			mv.addObject("medicineList", medicineList);
		}
		mv.setViewName("/medicine/TextSearchMedicineList");

		return mv;

	}

	@RequestMapping(value = "/searchRadioMedicine.do")
	public ModelAndView searchRadioMedicine(@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "0") int curRange, @RequestParam(defaultValue = "0") int result,
			@RequestParam(defaultValue = "1") int startp, String mdShape, String mdColor, String mdType, String mdLine,
			HttpServletRequest request, ModelAndView mv) {
		System.out.println("-------------------------------------------");
		System.out.println("searchRadioMedicine 약 모양검색 메소드 실행.");
		Map<String, String> searchRadio = new HashMap<String, String>();
		searchRadio.put("mdShape", mdShape);
		searchRadio.put("mdColor", mdColor);
		searchRadio.put("mdLine", mdLine);
		if (mdType == "정제류") {
			searchRadio.put("mdType1", "나정");
			searchRadio.put("mdType2", "필름코팅정");
			searchRadio.put("mdType3", "붕해(현탁)정");
		} else {
			searchRadio.put("mdType", mdType);
		}
		int listCnt1 = medicineService.countsMedicine();
		int listCnt = medicineService.searchCountMedicine2(searchRadio);

		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setListCnt(listCnt);
		if (listCnt == 0) {
			System.out.println("검색된결과가 없습니다.");
			mv.addObject("comment", "검색된 결과가 없습니다.");
		} else {
			mdBCounts.setMdColor(mdColor);
			mdBCounts.setMdShape(mdShape);
			mdBCounts.setMdLine(mdLine);
			mdBCounts.setMdType(mdType);
			mdBCounts.setPage(curPage, startp, curRange);
			if (result == 1) {
				mdBCounts.prevSetBlock(curRange);

			} else if (result == 2) {
				mdBCounts.nextSetBlock(curRange);
			}
			searchRadio.put("startIndex", Integer.toString(mdBCounts.getStartIndex()));
			searchRadio.put("endIndex", Integer.toString(mdBCounts.getEndIndex()));

			List<MedicineVO> medicineList = null;
			if (listCnt1 > 5000) {
				ThreadVO vv = new ThreadVO(listCnt1);
				Thread1 thread1 = new Thread1(searchRadio, listCnt1, vv);
				Thread2 thread2 = new Thread2(searchRadio, listCnt1, vv);
				Thread3 thread3 = new Thread3(searchRadio, listCnt1, vv);
				Thread4 thread4 = new Thread4(searchRadio, listCnt1, vv);
				Thread5 thread5 = new Thread5(searchRadio, listCnt1, vv);
				thread1.run();
				thread2.run();
				thread3.run();
				thread4.run();
				thread5.run();

				while (true) {

					if (thread1.medicineList == null) {
						System.out.println("1번쓰레드 도는중?");
						continue;
					} else if (thread1.result == "없다") {
						System.out.println("1번쓰레드 겸색완료");
						break;

					} else if (thread1.medicineList != null) {
						System.out.println("1번쓰레드 검색완료");
						if (medicineList == null) {
							medicineList = thread1.medicineList;
						} else {
							
							medicineList.addAll(thread1.medicineList);
						}
						break;
					}
				}
				while (true) {
					if (thread2.medicineList == null) {
						System.out.println("2번쓰레드 도는중?");
						continue;
					} else if (thread2.result == "없다") {
						System.out.println("2번쓰레드 겸색완료");
						break;

					} else if (thread2.medicineList != null) {
						System.out.println("2번쓰레드 검색완료");
						if (medicineList == null) {
							medicineList = thread2.medicineList;
						} else {
							medicineList.addAll(thread2.medicineList);
						}
						break;
					}
				}
				while (true) {
					if (thread3.medicineList == null) {
						System.out.println("3번쓰레드 도는중?");
						continue;
					} else if (thread3.result == "없다") {
						System.out.println("3번쓰레드 겸색완료");
						break;

					} else if (thread3.medicineList != null) {
						System.out.println("3번쓰레드 검색완료");
						if (medicineList == null) {
							medicineList = thread3.medicineList;
						} else {
							medicineList.addAll(thread3.medicineList);
						}
						break;
					}
				}
				while (true) {
					if (thread4.medicineList == null) {
						System.out.println("4번쓰레드 도는중?");
						continue;
					} else if (thread4.result == "없다") {
						System.out.println("4번쓰레드 겸색완료");
						break;

					} else if (thread4.medicineList != null) {
						System.out.println("4번쓰레드 검색완료");
						if (medicineList == null) {
							medicineList = thread4.medicineList;
						} else {
							medicineList.addAll(thread4.medicineList);
						}
						break;
					}
				}
				while (true) {
					if (thread5.medicineList == null) {
						System.out.println("5번쓰레드 도는중?");
						continue;
					} else if (thread5.result == "없다") {
						System.out.println("5번쓰레드 겸색완료");
						break;

					} else if (thread5.medicineList != null) {
						System.out.println("5번쓰레드 검색완료");
						if (medicineList == null) {
							medicineList = thread5.medicineList;
						} else {
							medicineList.addAll(thread5.medicineList);
						}
						break;
					}
				}

			} else {
				medicineList = medicineService.searchRadioMedicine(searchRadio);
			}

			mv.addObject("mdBCounts", mdBCounts);
			mv.addObject("medicineList", medicineList);
		}
		mv.setViewName("/medicine/ShapeSearchMedicineList");
		return mv;

	}
	
	

	

	class Thread1 implements Runnable {

		Map<String, String> mb;
		int startC;
		int endC;
		List<MedicineVO> medicineList;
		ThreadVO vv;
		String result = null;

		public Thread1(Map<String, String> mb, int listCnt) {
			this.mb = mb;
			startC = 0;
			endC = listCnt;
		}

		public Thread1(Map<String, String> mb, int listCnt, ThreadVO vv) {
			this.mb = mb;
			this.vv = vv;
			startC = vv.getStartC1();
			endC = vv.getEndC1();
		}

		@Override
		public void run() {
			System.out.println("아직 실행중이다 멈춰라~~!");
			mb.put("startIndex", Integer.toString(startC));
			mb.put("endIndex", Integer.toString(endC));
			if (mb.get("text") == null) {
				medicineList = medicineService.searchRadioMedicine(mb);
				if (medicineList == null) {
					this.result = "없다";
				}
			} else {
				medicineList = medicineService.searchTextMedicine(mb);
				if (medicineList == null) {
					this.result = "없다";
				}

			}

		}
	}

	class Thread2 implements Runnable {

		Map<String, String> mb;
		int startC;
		int endC;
		List<MedicineVO> medicineList;
		ThreadVO vv;
		String result = null;

		public Thread2(Map<String, String> mb, int listCnt, ThreadVO vv) {
			this.mb = mb;
			this.vv = vv;
			startC = vv.getStartC2();
			endC = vv.getEndC2();
		}

		@Override
		public void run() {
			System.out.println("아직 실행중이다 멈춰라~~!");
			mb.put("startIndex", Integer.toString(startC));
			mb.put("endIndex", Integer.toString(endC));
			if (mb.get("text") == null) {
				medicineList = medicineService.searchRadioMedicine(mb);
				if (medicineList == null) {
					this.result = "없다";
				}
			} else {
				medicineList = medicineService.searchTextMedicine(mb);
				if (medicineList == null) {
					this.result = "없다";
				}
			}
		}
	}

	class Thread3 implements Runnable {

		Map<String, String> mb;
		int startC;
		int endC;
		List<MedicineVO> medicineList;
		ThreadVO vv;
		String result = null;

		public Thread3(Map<String, String> mb, int listCnt, ThreadVO vv) {
			this.mb = mb;
			this.vv = vv;
			startC = vv.getStartC3();
			endC = vv.getEndC3();
		}

		@Override
		public void run() {
			System.out.println("아직 실행중이다 멈춰라~~!");
			mb.put("startIndex", Integer.toString(startC));
			mb.put("endIndex", Integer.toString(endC));
			if (mb.get("text") == null) {
				medicineList = medicineService.searchRadioMedicine(mb);
				if (medicineList == null) {
					this.result = "없다";
				}
			} else {
				medicineList = medicineService.searchTextMedicine(mb);
				if (medicineList == null) {
					this.result = "없다";
				}
			}
		}

	}

	class Thread4 implements Runnable {

		Map<String, String> mb;
		int startC;
		int endC;
		List<MedicineVO> medicineList;
		ThreadVO vv;
		String result = null;

		public Thread4(Map<String, String> mb, int listCnt, ThreadVO vv) {
			this.mb = mb;
			this.vv = vv;
			startC = vv.getStartC3();
			endC = vv.getEndC3();
		}

		@Override
		public void run() {
			System.out.println("아직 실행중이다 멈춰라~~!");
			mb.put("startIndex", Integer.toString(startC));
			mb.put("endIndex", Integer.toString(endC));
			if (mb.get("text") == null) {
				medicineList = medicineService.searchRadioMedicine(mb);
				if (medicineList == null) {
					this.result = "없다";
				}
			} else {
				medicineList = medicineService.searchTextMedicine(mb);
				if (medicineList == null) {
					this.result = "없다";
				}
			}
		}

	}

	class Thread5 implements Runnable {

		Map<String, String> mb;
		int startC;
		int endC;
		List<MedicineVO> medicineList;
		ThreadVO vv;
		String result = null;

		public Thread5(Map<String, String> mb, int listCnt, ThreadVO vv) {
			this.mb = mb;
			this.vv = vv;
			startC = vv.getStartC3();
			endC = vv.getEndC3();
		}

		@Override
		public void run() {
			System.out.println("아직 실행중이다 멈춰라~~!");
			mb.put("startIndex", Integer.toString(startC));
			mb.put("endIndex", Integer.toString(endC));
			if (mb.get("text") == null) {
				medicineList = medicineService.searchRadioMedicine(mb);
				if (medicineList == null) {
					this.result = "없다";
				}
			} else {
				medicineList = medicineService.searchTextMedicine(mb);
				if (medicineList == null) {
					this.result = "없다";
				}
			}
		}
	}
}
