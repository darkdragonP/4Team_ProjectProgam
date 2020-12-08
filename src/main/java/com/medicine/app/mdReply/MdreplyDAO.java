package com.medicine.app.mdReply;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MdreplyDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<MdReplyVO> selectMdReplyList(String mdIdx)  {
		return sqlSession.selectList("mdReply.selectMdReplyList", mdIdx);
	}
	public void insertMdReplyList(MdReplyVO vo) {
	sqlSession.insert("mdReply.insertMdReplyList", vo);
		
	}
	public void deleteMdReply(String uReIdx) {
		sqlSession.delete("mdReply.deleteMdReply", uReIdx);
	}
	
	
}
