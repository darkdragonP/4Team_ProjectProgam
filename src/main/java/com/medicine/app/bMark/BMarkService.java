package com.medicine.app.bMark;

import java.util.List;




public interface BMarkService {
	
	public List<BMarkVO> selectBMark(String bIdx);
	public void insertBMark(BMarkVO vo);
	public BMarkVO checkBMark(BMarkVO vo);
	
}
