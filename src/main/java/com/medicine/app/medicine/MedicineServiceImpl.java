package com.medicine.app.medicine;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medicine.app.MdBoardCounts;



@Service("MedicineService")
public class MedicineServiceImpl implements MedicineService {
	@Autowired
	private MedicineDAO medicineDAO;
	
	

	@Override
	public Integer countsMedicine() {
		return medicineDAO.countsMedicine();
	}

	public void setMedicineDAO(MedicineDAO medicineDAO) {
		this.medicineDAO = medicineDAO;
	}

	@Override
	public List<MedicineVO> selectMedicineList(Map<String, Integer> vo) {
		return medicineDAO.selectMedicineList(vo);
	}

	@Override
	public MedicineVO selectMedicine(String mdIdx) {
		return medicineDAO.selectMedicine(mdIdx);
	}

	@Override
	public void insertMedicine(MedicineVO vo) {
	}

	@Override
	public String selectMaxMdIdx() {
	return null;
	}

	@Override
	public void deleteAdminMedicine(String mdIdx) {
	}

	@Override
	public void updateHits(MedicineVO vo) {
		medicineDAO.updateHits(vo);
	}

	@Override
	public void updateAdminMedicine(MedicineVO vo) {
	}

	@Override
	public void updateMdRating(MedicineVO vo) {
		medicineDAO.updateMdRating(vo);
	}

	@Override
	public List<MedicineVO> searchRadioMedicine(Map<String, String> vo) {
		return medicineDAO.searchRadioMedicine(vo);
	}

	@Override
	public Integer searchCountMedicine(String text) {
		return medicineDAO.searchCountMedicine(text);
	}

	@Override
	public List<MedicineVO> searchTextMedicine(Map<String, Object> vo) {
		return medicineDAO.searchTextMedicine(vo);
	}
	

	


	
}
