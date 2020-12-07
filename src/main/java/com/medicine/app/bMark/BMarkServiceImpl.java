package com.medicine.app.bMark;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BMarkServiceImpl implements BMarkService {
	@Autowired
	private BMarkDAO bMarkDAO;

	@Override
	public List<BMarkVO> selectBMarkList() {
		// TODO Auto-generated method stub
		return bMarkDAO.selectBMarkList();
	}
	
	


	

}
