package com.medicine.app.bReply;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class BReplyDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<BReplyVO> selectBReplyList()  {
		return sqlSession.selectList("bReply.selectBReplyList");
	}
}
