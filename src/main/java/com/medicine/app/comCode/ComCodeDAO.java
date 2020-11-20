package com.medicine.app.comCode;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ComCodeDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<ComCodeVO> selectComCodeList()  {
		return sqlSession.selectList("comCode.selectComCodeList");
	}
	
}
