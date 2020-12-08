package com.medicine.app.board;

//BOARD 일반 게시판
public class BoardVO {

private int bIdx; //일반 게시판 코드
private int uIdx; //통합 회원 코드
private String bTitle; //일반 게시판 제목
private String bContents; //일반 게시판 내용
private String bDate; //일반 게시판  작성일
private String bHits; //일반 게시판 조회수 누적
private String bRating; //일반 게시판 좋아요 누적
private String bCry; //일반 게시판 신고 누적
private String uName;



public String getuName() {
	return uName;
}
public void setuName(String uName) {
	this.uName = uName;
}
public int getbIdx() {
	return bIdx;
}
public void setbIdx(int bIdx) {
	this.bIdx = bIdx;
}
public int getuIdx() {
	return uIdx;
}
public void setuIdx(int uIdx) {
	this.uIdx = uIdx;
}
public String getbTitle() {
	return bTitle;
}
public void setbTitle(String bTitle) {
	this.bTitle = bTitle;
}
public String getbContents() {
	return bContents;
}
public void setbContents(String bContents) {
	this.bContents = bContents;
}
public String getbDate() {
	return bDate;
}
public void setbDate(String bDate) {
	this.bDate = bDate;
}
public String getbHits() {
	return bHits;
}
public void setbHits(String bHits) {
	this.bHits = bHits;
}
public String getbRating() {
	return bRating;
}
public void setbRating(String bRating) {
	this.bRating = bRating;
}
public String getbCry() {
	return bCry;
}
public void setbCry(String bCry) {
	this.bCry = bCry;
}
@Override
public String toString() {
	// TODO Auto-generated method stub
	return "uName:"+uName+
			", bidx:"+bIdx+
		   ", uIdx:"+uIdx+
		   ", bTitle:"+bTitle+
		   ", bContents:"+bContents+
		   ", bDate:"+bDate+
		   ", bHits:"+bHits+
		   ", bRating:"+bRating+
		   ", bCry:"+bCry;
}

	


}
