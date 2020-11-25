package com.medicine.app.user;

import java.util.List;

public interface UserService {
	
	public List<UserVO> selectUserList();
	
	public List<UserVO> insert_Reg(UserVO vo);
	public List<UserVO> update_user(UserVO vo);
	public UserVO userDetail(String vo);
	public List<UserVO> delete_user(UserVO vo);
	public UserVO login(UserVO vo);
	public String idoverlap(String id);
}
