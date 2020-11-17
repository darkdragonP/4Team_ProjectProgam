package com.medicine.app.bMark;


//B_MARK 일반 게시판 별점
public class BMarkVO {

private int bIdx; //일반 게시판 코드
private int uIdx; //통합 회원 코드
private int bmr; //게시판 별점 누적

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
public int getBmr() {
	return bmr;
}
public void setBmr(int bmr) {
	this.bmr = bmr;
}


@Override
public String toString() {
	return "bIdx:"+bIdx+
			", uIdx:"+uIdx+
			", bmr:"+bmr;
}

}
