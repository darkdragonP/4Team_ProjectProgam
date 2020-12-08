package com.medicine.app.bCry;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medicine.app.bMark.BMarkVO;
import com.medicine.app.board.BoardVO;

@Repository
public class BCryDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public BCryVO checkBCry(BCryVO vo) {
		return sqlSession.selectOne("bcry.checkBCry", vo);
	}
	public void insertBCry(BCryVO vo) {
		sqlSession.insert("bcry.insertBCry", vo);
	}
}
