package com.medicine.app.uPdPage;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UpdDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<UpdVO> selectUpdList()  {
		return sqlSession.selectList("updPage.selectUpdPage");
	}
	
	
}
