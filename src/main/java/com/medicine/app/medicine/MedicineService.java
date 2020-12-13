package com.medicine.app.medicine;

import java.util.List;
import java.util.Map;


public interface MedicineService {

	public Integer countsMedicine();
	
	public List<MedicineVO> selectMedicineList(Map<String, Integer> vo);

	public List<MedicineVO> searchTextMedicine(Map<String, String> vo);

	public MedicineVO selectMedicine(String mdIdx);

	public void insertMedicine(MedicineVO vo);

	public String selectMaxMdIdx();

	public void deleteAdminMedicine(String mdIdx);

	public void updateHits(MedicineVO vo);

	public void updateAdminMedicine(MedicineVO vo);

	public void updateMdRating(MedicineVO vo);

	public List<MedicineVO> searchRadioMedicine(Map<String, String> vo);

	public Integer searchCountMedicine2(Map<String, String> vo);
	
	public Integer searchCountMedicine(String text);
	
	public Integer searchOcrCountMedicine(String text);
	
	public List<MedicineVO> searchOcrTextMedicine(Map<String, Object> vo);
	
	public List<MedicineVO> searchOcrImageMedicine(Map<String, Object> vo);
	
	public Integer searchOcrTCountMedicine(String text);
	public Integer searchOcrICountMedicine(String text);
	
}
