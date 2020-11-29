package com.medicine.app.mdMark;

import java.util.List;

public interface MdMarkService {
	
	public List<MdMarkVO> selectMdMark(String mdIdx);
	public void insertMdMark(MdMarkVO vo);
	public MdMarkVO checkMdMark(MdMarkVO vo);
	
}
