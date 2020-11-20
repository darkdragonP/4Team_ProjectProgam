package com.medicine.app.admin;

import java.util.List;

import com.medicine.app.medicine.MedicineVO;
import com.medicine.app.user.UserVO;

public interface AdminService {
	
	public List<UserVO> selectAdminList();
	
	public List<MedicineVO> selectAdminMedicineList();
}
