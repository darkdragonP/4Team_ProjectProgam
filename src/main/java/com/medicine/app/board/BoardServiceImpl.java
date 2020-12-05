package com.medicine.app.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public List<BoardVO> selectBoardList(Map<String, Integer> vo) {
		return boardDAO.selectBoardList(vo);
	}

	@Override
	public List<BoardVO> selectCryBoardList(Map<String, Integer> vo) {
		return boardDAO.selectCryBoardList(vo);
	}

	@Override
	public Integer countsBoard() {
		return boardDAO.countsBoard();
	}

	@Override
	public BoardVO selectBoard(String bIdx) {
		return boardDAO.selectBoard(bIdx);
	}

	@Override
	public void updateHits(BoardVO vo) {
		boardDAO.updateHits(vo);
	}

	@Override
	public void insertBoard(BoardVO vo) {
		boardDAO.insertBoard(vo);
	}

	@Override
	public String selectMaxBIdx() {
		return boardDAO.selectMaxBIdx();
	}

	@Override
	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
		
	}

	@Override
	public void deleteBoard(String bIdx) {
		boardDAO.deleteBoard(bIdx);
	}

	@Override
	public void updateBRating(BoardVO vo) {
		boardDAO.updateBRating(vo);
	}


	@Override
	public void updateBCry(BoardVO vo) {
		boardDAO.updateBCry(vo);
	}

	@Override
	public Integer searchCryBoardCounter(Map<String, String> vi) {
		return boardDAO.searchCryBoardCounter(vi);

	}

	@Override
	public List<BoardVO> searchCryBoardList(Map<String, String> vi) {
		return boardDAO.searchCryBoardList(vi);
	}

	
	

	
	
}
