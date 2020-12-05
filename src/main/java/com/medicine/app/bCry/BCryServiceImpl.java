package com.medicine.app.bCry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BCryServiceImpl implements BCryService {

	@Autowired
	BCryDAO bCryDAO;

	@Override
	public BCryVO checkBCry(BCryVO vo) {
		return bCryDAO.checkBCry(vo);
	}

	@Override
	public void insertBCry(BCryVO vo) {
		bCryDAO.insertBCry(vo);
	}
}
