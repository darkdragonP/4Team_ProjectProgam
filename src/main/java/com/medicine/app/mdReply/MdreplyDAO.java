package com.medicine.app.mdReply;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MdreplyDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<MdReplyVO> selectMdReplyList()  {
		return sqlSession.selectList("mdReply.selectMdReplyList");
	}
	
}
