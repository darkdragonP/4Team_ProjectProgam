package com.medicine.app.uPdPage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdServiceImpl implements UpdService {
	@Autowired
	private UpdDAO updDAO;

	@Override
	public List<UpdVO> selectUpdList() {
		return updDAO.selectUpdList();
	}

	@Override
	public void insertUpd(Map<String, Object> vi) {
		 updDAO.insertUpd(vi);
	}

	@Override
	public Integer countsuPdPage(int uIdx) {
		return updDAO.countsuPdPage(uIdx);
	}

	@Override
	public void deleteUpd(Map<String, Object> vi) {
		updDAO.deleteUpd(vi);
	}
	
	
	
}
