package com.medicine.app.bReply;


//B_REPLY 일반게시판_댓글
public class BReplyVO {	
private int uReIdx; //댓글 코드
private int bIdx; //일반게시판 코드
private int uIdx; //통합회원 코드
private String uReContent; //댓글 내용
private String uReDate; //댓글 작성일
private String uName;




public String getuName() {
	return uName;
}
public void setuName(String uName) {
	this.uName = uName;
}
public int getuReIdx() {
	return uReIdx;
}
public void setuReIdx(int uReIdx) {
	this.uReIdx = uReIdx;
}
public int getBIdx() {
	return bIdx;
}
public void setBIdx(int bIdx) {
	this.bIdx = bIdx;
}
public int getuIdx() {
	return uIdx;
}
public void setuIdx(int uIdx) {
	this.uIdx = uIdx;
}
public String getuReContent() {
	return uReContent;
}
public void setuReContent(String uReContent) {
	this.uReContent = uReContent;
}
public String getuReDate() {
	return uReDate;
}
public void setuReDate(String uReDate) {
	this.uReDate = uReDate;
}

@Override
public String toString() {
	
	return "uName:"+uName+
			"uReIdx:"+uReIdx+
			", bIdx:"+bIdx+
			", uIdx:"+uIdx+
			", uReContent:"+uReContent+
			", uReDate:"+uReDate;
}
}
