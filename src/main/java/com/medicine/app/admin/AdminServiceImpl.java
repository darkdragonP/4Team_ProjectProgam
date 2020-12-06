package com.medicine.app.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medicine.app.medicine.MedicineDAO;
import com.medicine.app.medicine.MedicineService;
import com.medicine.app.medicine.MedicineVO;

@Service("AdminMedicineService")
public class AdminServiceImpl implements MedicineService{
	@Autowired
	private AdminDAO adminDAO;

	@Autowired
	private MedicineDAO medicineDAO;
	
	

	
	
	@Override
	public Integer searchOcrCountMedicine(String text) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MedicineVO> searchOcrTextMedicine(String text) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MedicineVO> selectMedicineList(Map<String, Integer> vo) {
		return adminDAO.selectAdminList(vo);
	}

	@Override
	public MedicineVO selectMedicine(String mdIdx) {
		return medicineDAO.selectMedicine(mdIdx);
	}

	@Override
	public void insertMedicine(MedicineVO vo) {
		adminDAO.insertMedicine(vo);
	}

	@Override
	public String selectMaxMdIdx() {
		return adminDAO.selectMaxMdIdx();
	}
	@Override
	public void updateAdminMedicine(MedicineVO vo) {
		adminDAO.updateAdminMedicine(vo);

	}
	@Override
	public void deleteAdminMedicine(String mdIdx) {
		adminDAO.deleteAdminMedicine(mdIdx);
	}

	
	@Override
	public void updateHits(MedicineVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateMdRating(MedicineVO vo) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public List<MedicineVO> searchRadioMedicine(Map<String, String> vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer countsMedicine() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MedicineVO> searchTextMedicine(Map<String, String> vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer searchCountMedicine(String text) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer searchCountMedicine2(Map<String, String> vo) {
		// TODO Auto-generated method stub
		return 0;
	}



}