package com.medicine.app.mdReply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MdReplyServiceImpl implements MdReplyService {
	@Autowired
	private MdreplyDAO mdreplyDAO;

	@Override
	public List<MdReplyVO> selectMdReplyList() {
		return mdreplyDAO.selectMdReplyList();
	}

	@Override
	public void insertMdReplyList(MdReplyVO vo) {
		mdreplyDAO.insertMdReplyList(vo);
	}

	@Override
	public void deleteMdReply(String uReIdx) {
		mdreplyDAO.deleteMdReply(uReIdx);
		
	}

	
	
}
