package com.medicine.app.mdMark;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MdMarkServiceImpl implements MdMarkService {
	@Autowired
	private MdMarkDAO mdMarkDAO;

	@Override
	public List<MdMarkVO> selectMdMarkList() {
		return mdMarkDAO.selectMdMarkList();
	}
	
	
	

}
