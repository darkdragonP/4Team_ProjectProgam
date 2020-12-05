package com.medicine.app.board;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class BoardDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<BoardVO> selectBoardList(Map<String, Integer> vo)  {
		return sqlSession.selectList("board.selectBoardList", vo);
	}
	public List<BoardVO> selectCryBoardList(Map<String, Integer> vo)  {
		return sqlSession.selectList("board.selectCryBoardList", vo);
	}
	
	public Integer countsBoard() {
		return sqlSession.selectOne("board.boardCounts");
	}
	public BoardVO selectBoard(String bIdx) {
		return sqlSession.selectOne("board.selectBoard", bIdx);
	}
	public void updateHits(BoardVO vo) {
		sqlSession.update("board.updateHits", vo);
	}
	public void insertBoard(BoardVO vo) {
		sqlSession.insert("board.insertBoard", vo);
	}
	public String selectMaxBIdx() {
		return sqlSession.selectOne("board.selectMaxBIdx");
	}
	public void deleteBoard(String bIdx) {
		sqlSession.delete("board.deleteBoard", bIdx);
	}
	
	public void updateBoard(BoardVO vo) {
		sqlSession.update("board.updateBoard", vo);
	}
	public void updateBRating(BoardVO vo) {
		sqlSession.update("board.updateBRating", vo);
	}

	public void updateBCry(BoardVO vo) {
		sqlSession.update("board.updateBCry", vo);
	}
	public Integer searchCryBoardCounter(Map<String, String> vi) {
		return sqlSession.selectOne("board.searchCryBoardCounter", vi);
	}
	public List<BoardVO> searchCryBoardList(Map<String, String> vi) {
		return sqlSession.selectList("board.searchCryBoardList", vi);
	}
}
