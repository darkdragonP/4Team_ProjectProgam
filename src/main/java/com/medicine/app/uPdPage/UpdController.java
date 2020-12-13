package com.medicine.app.uPdPage;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.medicine.app.GoogleVisionImage;
import com.medicine.app.MdBoardCounts;
import com.medicine.app.ThreadVO;
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
		System.out.println("UserMainPay-由ъ뒪�듃 �씠�룞");
		HttpSession session = request.getSession();
		int uIdx = (Integer) session.getAttribute("uIdx");
		UserVO vi = new UserVO();
		vi.setuIdx(uIdx);
		UserVO selectUser = userService.userDetail(vi);

		int listCnt = updService.countsuPdPage(uIdx);
		MdBoardCounts mdBCounts = new MdBoardCounts();
		mdBCounts.setListCnt(listCnt);
		if (listCnt == 0) {
			System.out.println("�벑濡앺븯�떊 �궡�뿭�씠 �뾾�뒿�땲�떎.");
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
			mv.addObject("mdBCounts", mdBCounts);
			mv.addObject("updList", updList);
		}
		mv.addObject("selectUser", selectUser);
		mv.setViewName("updPage/UserMainPay");
		return mv;

	}

	@RequestMapping(value = "/InsertUpd.do", method = RequestMethod.POST)
	public ModelAndView InsertUpd(UpdVO vo, ModelAndView mv, HttpServletRequest request) throws IOException {
		HttpSession session = request.getSession();
		int uIdx = (Integer) session.getAttribute("uIdx");
		GoogleVisionImage test = new GoogleVisionImage();
		String text = test.onlyText(vo.getUploadFile());
		int listCnt1 = medicineService.countsMedicine();
		String[] change_target = text.replace(".", "").split(" |\t|\n|\r");
		String grade = "InsertUpd";
		if (listCnt1 > 100) {
			ThreadVO vv = new ThreadVO(listCnt1);
			for (String j : change_target) {
				Thread1 thread1 = new Thread1(j, vv, uIdx, grade);
				Thread2 thread2 = new Thread2(j, vv, uIdx, grade);
				Thread3 thread3 = new Thread3(j, vv, uIdx, grade);
				Thread4 thread4 = new Thread4(j, vv, uIdx, grade);
				Thread5 thread5 = new Thread5(j, vv, uIdx, grade);

				thread1.run();
				thread2.run();
				thread3.run();
				thread4.run();
				thread5.run();

				while (true) {

					if (thread1.medicineList == null) {
						continue;
					} else if (thread1.result == "없다") {
						System.out.println("1번쓰레드 겸색완료");
						break;

					} else if (thread1.medicineList != null) {
						System.out.println("1번쓰레드 검색완료");

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

						break;
					}
				}

			}
		} else {
			for (String j : change_target) {
				Map<String, Object> textIndex = new HashMap<String, Object>();
				int listCnt = medicineService.searchOcrTCountMedicine(j);
				if (listCnt == 0) {
					System.out.println(j + " = 없는 값");
				} else {
					textIndex.put("text", j);
					textIndex.put("startIndex", 0);
					textIndex.put("endIndex", listCnt);

					List<MedicineVO> selectMedicine = medicineService.searchOcrTextMedicine(textIndex);
					for (MedicineVO i : selectMedicine) {
						Map<String, Object> vi = new HashMap<String, Object>();
						vi.put("uIdx", uIdx);
						vi.put("mdIdx", i.getMdIdx());
						vi.put("MdName", i.getMdTitle());
						updService.insertUpd(vi);
					}
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
		List<MedicineVO> searchMdList = null;
		GoogleVisionImage test = new GoogleVisionImage();
		String text = test.onlyText(vo.getUploadFile());
		String[] tex = text.split("\n");
		String grade = "SearchOcr";
		int listCnt1 = medicineService.countsMedicine();
		
		
		if (listCnt1 > 100) {
			ThreadVO vv = new ThreadVO(listCnt1);
			Thread1 thread1 = new Thread1(tex, vv, grade);
			Thread2 thread2 = new Thread2(tex, vv, grade);
			Thread3 thread3 = new Thread3(tex, vv, grade);
			Thread4 thread4 = new Thread4(tex, vv, grade);
			Thread5 thread5 = new Thread5(tex, vv, grade);

			thread1.run();
			thread2.run();
			thread3.run();
			thread4.run();
			thread5.run();

			while (true) {

				if (thread1.medicineList == null) {
					continue;
				} else if (thread1.result == "없다") {
					System.out.println("1번쓰레드 겸색완료");
					break;

				} else if (thread1.medicineList != null) {
					System.out.println("1번쓰레드 검색완료");
					if (searchMdList == null) {
						searchMdList = thread1.medicineList;
					} else {

						searchMdList.addAll(thread1.medicineList);
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
					if (searchMdList == null) {
						searchMdList = thread2.medicineList;
					} else {
						searchMdList.addAll(thread2.medicineList);
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
					if (searchMdList == null) {
						searchMdList = thread3.medicineList;
					} else {
						searchMdList.addAll(thread3.medicineList);
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
					if (searchMdList == null) {
						searchMdList = thread4.medicineList;
					} else {
						searchMdList.addAll(thread4.medicineList);
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
					if (searchMdList == null) {
						searchMdList = thread5.medicineList;
					} else {
						searchMdList.addAll(thread5.medicineList);
					}
					break;
				}
			}

		} else {
			for (String i : tex) {
				Map<String, Object> textIndex = new HashMap<String, Object>();
				int listCnt = medicineService.searchOcrICountMedicine(i);
				if (listCnt == 0) {
					System.out.println(i + " = 없는 값");
				} else {
					textIndex.put("text", i);
					textIndex.put("startIndex", 0);
					textIndex.put("endIndex", listCnt);
					searchMdList = medicineService.searchOcrImageMedicine(textIndex);
				}
			}
		}

		List<String> image = test.ImageSearch(vo.getUploadFile());
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
		Map<String, Object> vu = new HashMap<String, Object>();
		if (listCnt == 0) {
		} else {
			mdBCounts.setPage(curPage, startp, curRange);
			if (result == 1) {
				mdBCounts.prevSetBlock(curRange);

			} else if (result == 2) {
				mdBCounts.nextSetBlock(curRange);
			}

			vu.put("uIdx", uIdx);
			vu.put("startIndex", Integer.toString(mdBCounts.getStartIndex()));
			vu.put("endIndex", Integer.toString(mdBCounts.getEndIndex()));
			List<UpdVO> updList = updService.selectUpdList(vu);
			mv.addObject("colorResult", colorResult);
			mv.addObject("mdBCounts", mdBCounts);
			mv.addObject("updList", updList);
		}
		
		String fileName = vo.getUploadFile().getOriginalFilename();
		String fileSavePath = request.getSession().getServletContext().getRealPath("");
		vo.getUploadFile().transferTo(new File(fileSavePath+ fileName));
		
		System.out.println(searchMdList);
		vu.put("text", text);
		vu.put("image", colorResult);
		mv.addObject("imagePath", fileSavePath+fileName);
		mv.addObject("textImage", vu);
		mv.addObject("searchMdList", searchMdList);
		mv.addObject("selectUser", selectUser);
		mv.setViewName("updPage/UserMainPay");
		return mv;

	}

	class Thread1 implements Runnable {

		String b;
		int startC;
		int endC;
		List<MedicineVO> medicineList;
		ThreadVO vv;
		String result = null;
		int uIdx;
		String grade;
		String[] bl;

		public Thread1(String[] bl, ThreadVO vv, String grade) {
			this.bl = bl;
			this.vv = vv;
			startC = vv.getStartC1();
			endC = vv.getEndC1();
			this.grade = grade;
		}

		public Thread1(String b, ThreadVO vv, int uIdx, String grade) {
			this.b = b;
			this.vv = vv;
			this.uIdx = uIdx;
			startC = vv.getStartC1();
			endC = vv.getEndC1();
			this.grade = grade;
		}

		@Override
		public void run() {
			if (grade == "InsertUpd") {
				System.out.println("thread1 스타트");
				int listCnt = medicineService.searchOcrTCountMedicine(b);
				if (listCnt == 0) {
					System.out.println(b + " = 없는값(Thread1).");
				} else {
					Map<String, Object> textIndex = new HashMap<String, Object>();
					textIndex.put("startIndex", startC);
					textIndex.put("endIndex", endC);
					textIndex.put("text", b);
					medicineList = medicineService.searchOcrTextMedicine(textIndex);
					if (medicineList == null) {
						this.result = "없다";
					} else {
						for (MedicineVO i : medicineList) {
							Map<String, Object> vi = new HashMap<String, Object>();
							vi.put("uIdx", uIdx);
							vi.put("mdIdx", i.getMdIdx());
							vi.put("MdName", i.getMdTitle());
							updService.insertUpd(vi);
						}
					}
				}
				System.out.println("==========================");
			} else {
				System.out.println(startC);
				System.out.println(endC);
				for (String i : bl) {
					Map<String, Object> textIndex = new HashMap<String, Object>();
					int listCnt = medicineService.searchOcrICountMedicine(i);
					if (listCnt == 0) {
						System.out.println(i + " = 없는 값(Thread1)");
					} else {
						textIndex.put("text", i);
						textIndex.put("startIndex", startC);
						textIndex.put("endIndex", endC);
						medicineList = medicineService.searchOcrImageMedicine(textIndex);
						if (medicineList == null) {
							this.result = "없다";
						}
					}
					System.out.println("==========================");
				}
			}
		}
	}

	class Thread2 implements Runnable {

		String b;
		int startC;
		int endC;
		List<MedicineVO> medicineList;
		ThreadVO vv;
		String result = null;
		int uIdx;
		String grade;
		String[] bl;

		public Thread2(String[] bl, ThreadVO vv, String grade) {
			this.bl = bl;
			this.vv = vv;
			startC = vv.getStartC2();
			endC = vv.getEndC2();
			this.grade = grade;
		}

		public Thread2(String b, ThreadVO vv, int uIdx, String grade) {
			this.b = b;
			this.vv = vv;
			this.uIdx = uIdx;
			startC = vv.getStartC2();
			endC = vv.getEndC2();
			this.grade = grade;
		}

		@Override
		public void run() {
			if (grade == "InsertUpd") {
				System.out.println("thread2 스타트");
				int listCnt = medicineService.searchOcrTCountMedicine(b);
				if (listCnt == 0) {
					System.out.println(b + " = 없는값(Thread2).");
				} else {
					Map<String, Object> textIndex = new HashMap<String, Object>();
					textIndex.put("startIndex", startC);
					textIndex.put("endIndex", endC);
					textIndex.put("text", b);
					medicineList = medicineService.searchOcrTextMedicine(textIndex);
					if (medicineList == null) {
						this.result = "없다";
					} else {
						for (MedicineVO i : medicineList) {
							Map<String, Object> vi = new HashMap<String, Object>();
							vi.put("uIdx", uIdx);
							vi.put("mdIdx", i.getMdIdx());
							vi.put("MdName", i.getMdTitle());
							updService.insertUpd(vi);
						}
					}
				}
				System.out.println("==========================");
			} else {
				System.out.println(startC);
				System.out.println(endC);
				for (String i : bl) {
					Map<String, Object> textIndex = new HashMap<String, Object>();
					int listCnt = medicineService.searchOcrICountMedicine(i);
					if (listCnt == 0) {
						System.out.println(i + " = 없는 값(Thread2)");
					} else {
						textIndex.put("text", i);
						textIndex.put("startIndex", startC);
						textIndex.put("endIndex", endC);
						medicineList = medicineService.searchOcrImageMedicine(textIndex);
						if (medicineList == null) {
							this.result = "없다";
						}
					}
					System.out.println("==========================");
				}
			}
		}
	}

	class Thread3 implements Runnable {

		String b;
		int startC;
		int endC;
		List<MedicineVO> medicineList;
		ThreadVO vv;
		String result = null;
		int uIdx;
		String grade;
		String[] bl;

		public Thread3(String[] bl, ThreadVO vv, String grade) {
			this.bl = bl;
			this.vv = vv;
			startC = vv.getStartC3();
			endC = vv.getEndC3();
			this.grade = grade;
		}

		public Thread3(String b, ThreadVO vv, int uIdx, String grade) {
			this.b = b;
			this.vv = vv;
			this.uIdx = uIdx;
			startC = vv.getStartC3();
			endC = vv.getEndC3();
			this.grade = grade;
		}

		@Override
		public void run() {
			if (grade == "InsertUpd") {
				System.out.println("thread3 스타트");
				int listCnt = medicineService.searchOcrTCountMedicine(b);
				if (listCnt == 0) {
					System.out.println(b + " = 없는값(Thread3).");
				} else {
					Map<String, Object> textIndex = new HashMap<String, Object>();
					textIndex.put("startIndex", startC);
					textIndex.put("endIndex", endC);
					textIndex.put("text", b);
					medicineList = medicineService.searchOcrTextMedicine(textIndex);
					if (medicineList == null) {
						this.result = "없다";
					} else {
						for (MedicineVO i : medicineList) {
							Map<String, Object> vi = new HashMap<String, Object>();
							vi.put("uIdx", uIdx);
							vi.put("mdIdx", i.getMdIdx());
							vi.put("MdName", i.getMdTitle());
							updService.insertUpd(vi);
						}
					}
				}
				System.out.println("==========================");
			} else {
				System.out.println(startC);
				System.out.println(endC);
				for (String i : bl) {
					Map<String, Object> textIndex = new HashMap<String, Object>();
					int listCnt = medicineService.searchOcrICountMedicine(i);
					if (listCnt == 0) {
						System.out.println(i + " = 없는 값(Thread3)");
					} else {
						textIndex.put("text", i);
						textIndex.put("startIndex", startC);
						textIndex.put("endIndex", endC);
						medicineList = medicineService.searchOcrImageMedicine(textIndex);
						if (medicineList == null) {
							this.result = "없다";
						}
					}
					System.out.println("==========================");
				}
			}
		}
	}

	class Thread4 implements Runnable {

		String b;
		int startC;
		int endC;
		List<MedicineVO> medicineList;
		ThreadVO vv;
		String result = null;
		int uIdx;
		String grade;
		String[] bl;

		public Thread4(String[] bl, ThreadVO vv, String grade) {
			this.bl = bl;
			this.vv = vv;
			startC = vv.getStartC4();
			endC = vv.getEndC4();
			this.grade = grade;
		}

		public Thread4(String b, ThreadVO vv, int uIdx, String grade) {
			this.b = b;
			this.vv = vv;
			this.uIdx = uIdx;
			startC = vv.getStartC4();
			endC = vv.getEndC4();
			this.grade = grade;
		}

		@Override
		public void run() {
			if (grade == "InsertUpd") {
				System.out.println("thread4 스타트");
				int listCnt = medicineService.searchOcrTCountMedicine(b);
				if (listCnt == 0) {
					System.out.println(b + " = 없는값(Thread4).");
				} else {
					Map<String, Object> textIndex = new HashMap<String, Object>();
					textIndex.put("startIndex", startC);
					textIndex.put("endIndex", endC);
					textIndex.put("text", b);
					medicineList = medicineService.searchOcrTextMedicine(textIndex);
					if (medicineList == null) {
						this.result = "없다";
					} else {
						for (MedicineVO i : medicineList) {
							Map<String, Object> vi = new HashMap<String, Object>();
							vi.put("uIdx", uIdx);
							vi.put("mdIdx", i.getMdIdx());
							vi.put("MdName", i.getMdTitle());
							updService.insertUpd(vi);
						}
					}
				}
				System.out.println("==========================");
			} else {
				System.out.println(startC);
				System.out.println(endC);
				for (String i : bl) {
					Map<String, Object> textIndex = new HashMap<String, Object>();
					int listCnt = medicineService.searchOcrICountMedicine(i);
					if (listCnt == 0) {
						System.out.println(i + " = 없는 값(Thread4)");
					} else {
						textIndex.put("text", i);
						textIndex.put("startIndex", startC);
						textIndex.put("endIndex", endC);
						medicineList = medicineService.searchOcrImageMedicine(textIndex);
						if (medicineList == null) {
							this.result = "없다";
						}
					}
					System.out.println("==========================");
				}
			}
		}
	}

	class Thread5 implements Runnable {

		String b;
		int startC;
		int endC;
		List<MedicineVO> medicineList;
		ThreadVO vv;
		String result = null;
		int uIdx;
		String grade;
		String[] bl;

		public Thread5(String[] bl, ThreadVO vv, String grade) {
			this.bl = bl;
			this.vv = vv;
			startC = vv.getStartC5();
			endC = vv.getEndC5();
			this.grade = grade;
		}

		public Thread5(String b, ThreadVO vv, int uIdx, String grade) {
			this.b = b;
			this.vv = vv;
			this.uIdx = uIdx;
			startC = vv.getStartC5();
			endC = vv.getEndC5();
			this.grade = grade;
		}

		@Override
		public void run() {
			if (grade == "InsertUpd") {
				System.out.println("thread5 스타트");
				int listCnt = medicineService.searchOcrTCountMedicine(b);
				if (listCnt == 0) {
					System.out.println(b + " = 없는값(Thread5).");
				} else {
					Map<String, Object> textIndex = new HashMap<String, Object>();
					textIndex.put("startIndex", startC);
					textIndex.put("endIndex", endC);
					textIndex.put("text", b);
					medicineList = medicineService.searchOcrTextMedicine(textIndex);
					if (medicineList == null) {
						this.result = "없다";
					} else {
						for (MedicineVO i : medicineList) {
							Map<String, Object> vi = new HashMap<String, Object>();
							vi.put("uIdx", uIdx);
							vi.put("mdIdx", i.getMdIdx());
							vi.put("MdName", i.getMdTitle());
							updService.insertUpd(vi);
						}
					}
				}
				System.out.println("==========================");

			} else {
				System.out.println(startC);
				System.out.println(endC);
				for (String i : bl) {
					Map<String, Object> textIndex = new HashMap<String, Object>();
					int listCnt = medicineService.searchOcrICountMedicine(i);
					if (listCnt == 0) {
						System.out.println(i + " = 없는 값(Thread5)");
					} else {
						textIndex.put("text", i);
						textIndex.put("startIndex", startC);
						textIndex.put("endIndex", endC);
						medicineList = medicineService.searchOcrImageMedicine(textIndex);
						if (medicineList == null) {
							this.result = "없다";
						}
					}
					System.out.println("==========================");
				}

			}
		}

	}

}
