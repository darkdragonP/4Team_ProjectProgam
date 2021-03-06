package com.medicine.app.mdMark;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MdMarkServiceImpl implements MdMarkService {
	@Autowired
	private MdMarkDAO mdMarkDAO;
	

	@Override
	public List<MdMarkVO> selectMdMark(String mdIdx) {
		return mdMarkDAO.selectMdMark(mdIdx);
	}

	@Override
	public void insertMdMark(MdMarkVO vo) {
		mdMarkDAO.insertMdMark(vo);
		
	}

	@Override
	public MdMarkVO checkMdMark(MdMarkVO vo) {
		return mdMarkDAO.checkMdMark(vo);
	}

	
	
	
	

}
