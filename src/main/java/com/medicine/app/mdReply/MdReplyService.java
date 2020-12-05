package com.medicine.app.mdReply;

import java.util.List;

import com.medicine.app.medicine.MedicineVO;



public interface MdReplyService {
	
	public List<MdReplyVO> selectMdReplyList(String mdIdx);
	public void insertMdReplyList(MdReplyVO vo);
	public void deleteMdReply(String uReIdx);
}
