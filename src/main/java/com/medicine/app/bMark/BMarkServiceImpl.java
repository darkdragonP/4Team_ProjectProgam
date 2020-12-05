package com.medicine.app.bMark;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BMarkServiceImpl implements BMarkService {
	@Autowired
	private BMarkDAO bMarkDAO;

	@Override
	public List<BMarkVO> selectBMark(String bIdx) {
		return bMarkDAO.selectBMark(bIdx);
	}

	@Override
	public void insertBMark(BMarkVO vo) {
		bMarkDAO.insertBMark(vo);
	}

	@Override
	public BMarkVO checkBMark(BMarkVO vo) {
		return bMarkDAO.checkBMark(vo);
	}



	

}
