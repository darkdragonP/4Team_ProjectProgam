package com.medicine.app.uPdPage;

import java.util.List;
import java.util.Map;




public interface UpdService {
	
	public List<UpdVO> selectUpdList(Map<String, Object> vu);
	public void insertUpd(Map<String, Object> vi);
	public Integer countsuPdPage(int uIdx);
	public void deleteUpd(Map<String, Object> vi);
	
}
