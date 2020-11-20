package com.medicine.app.medicine;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MedicineServiceImpl implements MedicineService {
	@Autowired
	private MedicineDAO medicineDAO;

	@Override
	public List<MedicineVO> selectMedicineList() {
		return medicineDAO.selectMedicineList();
	}

	@Override
	public MedicineVO selectMedicine(String mdIdx) {
		// TODO Auto-generated method stub
		return medicineDAO.selectMedicine(mdIdx);
	}

	@Override
	public void insertMedicine(MedicineVO vo) {
		// TODO Auto-generated method stub
		medicineDAO.insertMedicine(vo);
	}

	@Override
	public String selectMaxMdIdx() {
		return medicineDAO.selectMaxMdIdx();
	}

	@Override
	public void deleteAdminMedicine(String mdIdx) {
	 medicineDAO.deleteAdminMedicine(mdIdx);
	}

	


	
}
