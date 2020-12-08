package com.medicine.app.bCry;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class BCryDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public BCryVO checkBCry(BCryVO vo) {
		return sqlSession.selectOne("bcry.checkBCry", vo);
	}
	public void insertBCry(BCryVO vo) {
		sqlSession.insert("bcry.insertBCry", vo);
	}
}
