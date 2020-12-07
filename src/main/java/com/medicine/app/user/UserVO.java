package com.medicine.app.user;

import lombok.Data;

//USER
@Data
public class UserVO {

	private int uIdx; // 통합회원코드
	private String userID; // 아이디
	private String userPW; // 비밀번호
	private String uEmail; // 이메일
	private String uName; // 이름
	private String uBirth; // 생일
	private String uPostNum; // 우편번호
	private String uPhCD; // 통신 식별번호
	private String uPhNum; // 핸드폰 번호
	private String uProfile; // 프로필사진
	private String address; // 주소
	private String uDate; // 가입일
	private String uMailCon; // 광고동의
	private String ocrPay; // OCR결제

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "uIdx:" + uIdx + ", userID:" + userID + ", userPW:" + userPW + ", uEmail:" + uEmail + ", uName:" + uName
				+ ", uBirth:" + uBirth + ", uPostNum:" + uPostNum + ", uPhCD:" + uPhCD + ", uPhNum:" + uPhNum
				+ ", uProfile:" + uProfile + ", address:" + address + ", uDate:" + uDate + ", uMailCon:" + uMailCon
				+ ", ocrPay:" + ocrPay;
	}

}
