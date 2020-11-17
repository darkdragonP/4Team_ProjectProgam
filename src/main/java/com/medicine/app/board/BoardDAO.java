package com.medicine.app.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class BoardDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<BoardVO> selectBoardList()  {
		return sqlSession.selectList("board.selectBoardList");
	}
	
}
