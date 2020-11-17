package com.medicine.app.bMark;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class BMarkDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<BMarkVO> selectBMarkList()  {
		return sqlSession.selectList("bMark.selectBMarkList");
	}
}
