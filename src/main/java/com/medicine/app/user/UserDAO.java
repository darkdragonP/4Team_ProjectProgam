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
	
	public void insert_Reg(UserVO vo){
		sqlSession.selectList("user.insert_Reg", vo);
	}
	
	public void update_user(UserVO vo){
		sqlSession.selectList("user.update_user", vo);
	}
	
	public UserVO userDetail(String vo){
		return sqlSession.selectOne("user.detail_user", vo);
	}

	public UserVO login(UserVO vo) {
		return sqlSession.selectOne("user.detail_user", vo);
	}
	
}
