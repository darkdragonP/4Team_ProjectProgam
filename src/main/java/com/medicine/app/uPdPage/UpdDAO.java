package com.medicine.app.uPdPage;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UpdDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<UpdVO> selectUpdList(Map<String, Object> vu)  {
		return sqlSession.selectList("updPage.selectUpdPage", vu);
	}
	
	public void insertUpd(Map<String, Object> vi) {
		sqlSession.insert("updPage.insertUpd", vi);
	}
	
	public Integer countsuPdPage(int uIdx) {
		return sqlSession.selectOne("updPage.countsuPdPage", uIdx);
	}

	public void deleteUpd(Map<String, Object> vi) {
		sqlSession.delete("updPage.deleteUpd", vi);
	}
}
