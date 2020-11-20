package com.medicine.app.qna;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnADAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<QnAVO> selectQnAList()  {
		return sqlSession.selectList("qna.selectQnAList암걸리겠다");
	}
	
	
}
