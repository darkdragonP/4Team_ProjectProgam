package com.medicine.app.user;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	@Override
	public List<UserVO> selectUserList() {
		return userDAO.selectUserList();
	}

	// 회원가입
	@Override
	public List<UserVO> insert_Reg(UserVO vo) {
		userDAO.insert_Reg(vo);
		return null;
	}

	// 회원수정
	@Override
	public List<UserVO> update_user(UserVO vo) {
		userDAO.update_user(vo);
		return null;
	}

	// 회원상세보기
	@Override
	public UserVO userDetail(UserVO vo) {
		return userDAO.userDetail(vo);
	}

	// 회원삭제
	@Override
	public UserVO delete_user(UserVO vo) {
		return userDAO.delete_user(vo);
	}

	// 로그인
	@Override
	public UserVO login(UserVO vo) {
		return userDAO.login(vo);
	}

	// 아이디중복확인
	@Override
	public String idoverlap(String id) {
		System.out.println("service : " + id);
		String idCheck = userDAO.idoverlap(id);
		String resultMsg = null;
		if (idCheck == null) {
			resultMsg = "OK";
		} else {
			resultMsg = "NO";
		}
		return resultMsg;
	}

	// 아이디 찾기
	@Override
	public ArrayList<String> findId(UserVO vo) {
		List<UserVO> list = userDAO.findId(vo);
		ArrayList<String> findId = new ArrayList<String>();
		for (int i = 0; i < list.size(); i++) {
			String ID = list.get(i).getUserID();
			findId.add(ID);
		}
		return findId;
	}

	// 비밀번호 찾기
	@Override
	public ArrayList<String> findPw(UserVO vo) {
		List<UserVO> list = userDAO.findPw(vo);
		ArrayList<String> findPw = new ArrayList<String>();
		for (int i = 0; i < list.size(); i++) {
			String PW = list.get(i).getUserPW();
			findPw.add(PW);
		}
		return findPw;
	}
}