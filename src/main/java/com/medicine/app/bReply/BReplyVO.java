package com.medicine.app.bReply;


//B_REPLY 일반게시판_댓글
public class BReplyVO {	
private int uReIdx; //댓글 코드
private int BIdx; //일반게시판 코드
private int uIdx; //통합회원 코드
private int uReContent; //댓글 내용
private int uReDate; //댓글 작성일

public int getuReIdx() {
	return uReIdx;
}
public void setuReIdx(int uReIdx) {
	this.uReIdx = uReIdx;
}
public int getBIdx() {
	return BIdx;
}
public void setBIdx(int bIdx) {
	BIdx = bIdx;
}
public int getuIdx() {
	return uIdx;
}
public void setuIdx(int uIdx) {
	this.uIdx = uIdx;
}
public int getuReContent() {
	return uReContent;
}
public void setuReContent(int uReContent) {
	this.uReContent = uReContent;
}
public int getuReDate() {
	return uReDate;
}
public void setuReDate(int uReDate) {
	this.uReDate = uReDate;
}

@Override
public String toString() {
	
	return "uReIdx:"+uReIdx+
			", BIdx:"+BIdx+
			", uIdx:"+uIdx+
			", uReContent:"+uReContent+
			", uReDate:"+uReDate;
}
}
