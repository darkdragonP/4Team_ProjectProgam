package com.medicine.app.board;

import java.util.List;
import java.util.Map;




public interface BoardService {
	
	public List<BoardVO> selectBoardList(Map<String, Integer> vo);

	public List<BoardVO> selectCryBoardList(Map<String, Integer> vo);
	
	public Integer countsBoard();
	
	public BoardVO selectBoard(String bIdx);
	
	public void updateHits(BoardVO vo);
	
	public void insertBoard(BoardVO vo);
	
	public String selectMaxBIdx();
	
	public void updateBoard(BoardVO vo);
	
	public void deleteBoard(String bIdx);
	
	public void updateBRating(BoardVO vo);
	
	public void updateBCry(BoardVO vo);
	
	public Integer searchCryBoardCounter(Map<String, String> vi);
	
	public List<BoardVO> searchCryBoardList(Map<String, String> vi);
	
	
}
