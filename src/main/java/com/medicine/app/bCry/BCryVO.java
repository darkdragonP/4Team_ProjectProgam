package com.medicine.app.bCry;



//B_MARK 일반 게시판 별점
public class BCryVO {

private int bIdx; //일반 게시판 코드
private int uIdx; //통합 회원 코드
private int bcry; //게시판 신고 누적

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


public int getBcry() {
	return bcry;
}
public void setBcry(int bcry) {
	this.bcry = bcry;
}
@Override
public String toString() {
	return "bIdx:"+bIdx+
			", uIdx:"+uIdx+
			", bcry:"+bcry;
}

}
