package com.medicine.app.mdMark;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MdMarkDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<MdMarkVO> selectMdMarkList()  {
		return sqlSession.selectList("mdMark.selectMdMarkList");
	}
	
	
}
