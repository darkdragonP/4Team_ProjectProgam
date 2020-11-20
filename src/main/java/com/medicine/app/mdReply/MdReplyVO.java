package com.medicine.app.mdReply;

//MD_REPLY 약 게시판_댓글
public class MdReplyVO {
private int uReIdx; //댓글 코드
private int uIdx; //통합회원코드
private int mdIdx; //약 코드
private String uReContent; //댓글 내용
private String uReDate; //댓글 작성일

public int getuReIdx() {
	return uReIdx;
}
public void setuReIdx(int uReIdx) {
	this.uReIdx = uReIdx;
}
public int getuIdx() {
	return uIdx;
}
public void setuIdx(int uIdx) {
	this.uIdx = uIdx;
}
public int getMdIdx() {
	return mdIdx;
}
public void setMdIdx(int mdIdx) {
	this.mdIdx = mdIdx;
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
	return "uReIdx:"+uReIdx+
		   ", uIdx:"+uIdx+
		   ", mdIdx:"+mdIdx+
		   ", uReContent:"+uReContent+
		   ", uReDate:"+uReDate;
}



}
