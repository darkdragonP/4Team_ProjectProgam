package com.medicine.app.mdReply;

import java.util.List;




public interface MdReplyService {
	
	public List<MdReplyVO> selectMdReplyList(String mdIdx);
	public void insertMdReplyList(MdReplyVO vo);
	public void deleteMdReply(String uReIdx);
}
