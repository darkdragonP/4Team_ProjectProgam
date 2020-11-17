package com.medicine.app.uPdPage;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdServiceImpl implements UpdService {
	@Autowired
	private UpdDAO updDAO;

	@Override
	public List<UpdVO> selectUpdList() {
		return updDAO.selectUpdList();
	}
	
	
	
}
