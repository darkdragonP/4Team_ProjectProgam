package com.medicine.app.user;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;
	
	
	@Override
	public List<UserVO> selectUserList() {
		return userDAO.selectUserList();
	}
	
	

}