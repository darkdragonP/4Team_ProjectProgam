package com.medicine.app.mdMark;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MdMarkDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<MdMarkVO> selectMdMark(String mdIdx)  {
		return sqlSession.selectList("mdMark.selectMdMark", mdIdx);
	}
	
	public void insertMdMark(MdMarkVO vo) {
		sqlSession.insert("mdMark.insertMdMark", vo);
	}
	public MdMarkVO checkMdMark(MdMarkVO vo) {
		return sqlSession.selectOne("mdMark.checkMdMark", vo);
	}
}
