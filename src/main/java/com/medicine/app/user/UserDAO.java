package com.medicine.app.user;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<UserVO> selectUserList()  {
		return sqlSession.selectList("user.selectUserList");
	}

	// 회원가입
	public void insert_Reg(UserVO vo){
		sqlSession.selectList("user.insert_Reg", vo);
	}

	// 회원수정
	public void update_user(UserVO vo){
		sqlSession.selectList("user.update_user", vo);
	}

	// 회원상세보기
	public UserVO userDetail(UserVO vo){
		return sqlSession.selectOne("user.detail_user", vo);
	}
	
	// 회원삭제
	public UserVO delete_user(UserVO vo){
		return sqlSession.selectOne("user.delete_user", vo);
	}
	
	// 로그인
	public UserVO login(UserVO vo) {
		return sqlSession.selectOne("user.login", vo);
	}	
	
	// 아이디중복확인
	public String idoverlap(String id) {
		System.out.println(id);
		return sqlSession.selectOne("user.idoverlap", id);
	}
	
	// 아이디찾기
	
}
