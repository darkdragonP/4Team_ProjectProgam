package com.medicine.app.comCode;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComCodeServiceImpl implements ComCodeService {
	@Autowired
	private ComCodeDAO comCodeDAO;

	@Override
	public List<ComCodeVO> selectComCodeList() {
		return comCodeDAO.selectComCodeList();
	}

	
	
}
