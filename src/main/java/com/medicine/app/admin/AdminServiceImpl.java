package com.medicine.app.admin;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medicine.app.user.UserVO;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;
	
	
	@Override
	public List<UserVO> selectAdminList() {
		return adminDAO.selectAdminList();
	}
	
	

}