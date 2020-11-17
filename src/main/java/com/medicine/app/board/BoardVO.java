package com.medicine.app.board;


//BOARD 일반 게시판
public class BoardVO {

private int bIdx; //일반 게시판 코드
private int uIdx; //통합 회원 코드
private String bTitle; //일반 게시판 제목
private String bContents; //일반 게시판 내용
private String bDate; //일반 게시판  작성일
private int bHits; //일반 게시판 조회수 누적
private int bRating; //일반 게시판 별점 누적
private int bCry; //일반 게시판 신고 누적



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
public int getbHits() {
	return bHits;
}
public void setbHits(int bHits) {
	this.bHits = bHits;
}
public int getbRating() {
	return bRating;
}
public void setbRating(int bRating) {
	this.bRating = bRating;
}
public int getbCry() {
	return bCry;
}
public void setbCry(int bCry) {
	this.bCry = bCry;
}
@Override
public String toString() {
	// TODO Auto-generated method stub
	return "bidx:"+bIdx+
		   ", uIdx:"+uIdx+
		   ", bTitle:"+bTitle+
		   ", bContents:"+bContents+
		   ", bDate:"+bDate+
		   ", bHits:"+bHits+
		   ", bRating:"+bRating+
		   ", bCry:"+bCry;
}

	


}
