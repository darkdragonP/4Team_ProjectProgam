package com.medicine.app.bReply;

import java.util.List;




public interface BReplyService {
	
	public List<BReplyVO> selectBRelplyList(String bIdx);
	public void insertBReplyList(BReplyVO vo);
	public void deleteBReply(String uReIdx);
	
	
}
