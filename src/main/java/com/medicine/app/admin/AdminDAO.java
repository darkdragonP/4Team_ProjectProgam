package com.medicine.app.admin;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medicine.app.user.UserVO;

@Repository
public class AdminDAO {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<UserVO> selectAdminList()  {
		return sqlSession.selectList("admin.selectAdminList");
	}
	
	
}
