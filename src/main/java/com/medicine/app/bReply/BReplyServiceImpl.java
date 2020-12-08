package com.medicine.app.bReply;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medicine.app.board.BoardVO;

@Service
public class BReplyServiceImpl implements BReplyService {
	@Autowired
	private BReplyDAO brReplyDAO;

	@Override
	public List<BReplyVO> selectBRelplyList(String bIdx) {
		return brReplyDAO.selectBReplyList(bIdx);
	}

	@Override
	public void insertBReplyList(BReplyVO vo) {
		brReplyDAO.insertBReplyList(vo);
		}


	@Override
	public void deleteBReply(String uReIdx) {
		brReplyDAO.deleteBReply(uReIdx);
		
		}

	
	

}
