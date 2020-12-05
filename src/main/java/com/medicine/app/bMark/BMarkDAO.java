package com.medicine.app.bMark;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class BMarkDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<BMarkVO> selectBMark(String bIdx)  {
		return sqlSession.selectList("bMark.selectBMark",bIdx);
	}
	
	public void insertBMark(BMarkVO vo) {
		sqlSession.insert("bMark.insertBMark", vo);
	}
	
	public BMarkVO checkBMark(BMarkVO vo) {
		return sqlSession.selectOne("bMark.checkBMark", vo);
	}
}
