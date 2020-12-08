package com.medicine.app.bReply;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class BReplyDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<BReplyVO> selectBReplyList(String bIdx)  {
		return sqlSession.selectList("bReply.selectBReplyList", bIdx);
	}
	
	public void insertBReplyList(BReplyVO vo) {
	sqlSession.insert("bReply.insertBReplyList", vo);
		
	}
	public void deleteBReply(String uReIdx) {
		sqlSession.delete("bReply.deleteBReply", uReIdx);
	}
	

}
