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
	
	
}
