package com.medicine.app.user;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

public interface UserService {
	
	public List<UserVO> selectUserList();
	
	public List<UserVO> insert_Reg(UserVO vo);
	public List<UserVO> update_user(UserVO vo);
	public UserVO userDetail(UserVO vo);
	public UserVO delete_user(UserVO vo);
	public UserVO login(UserVO vo);
	public String idoverlap(String id);
	public Object find_id(HttpServletResponse response, String email) throws Exception;

}
