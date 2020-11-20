package com.medicine.app.bReply;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BReplyServiceImpl implements BReplyService {
	@Autowired
	private BReplyDAO brReplyDAO;

	@Override
	public List<BReplyVO> selectBRelplyList() {
		return brReplyDAO.selectBReplyList();
	}
	
	

}
