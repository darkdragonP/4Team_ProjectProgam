package com.medicine.app.qna;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnAServiceImpl implements QnAService {
	@Autowired
	private QnADAO qnaDAO;
	
	
	@Override
	public List<QnAVO> selectQnAList() {
		return qnaDAO.selectQnAList();
	}
	
	

}