package com.medicine.app.mdMark;


//MD_MARK 약 게시판 별점
public class MdMarkVO {
	
private int uIdx; //통합회원코드
private int mdIdx; //약 코드
private int mdMR; //약 리스트 별점 누적

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
public int getMdMR() {
	return mdMR;
}
public void setMdMR(int mdMR) {
	this.mdMR = mdMR;
}
@Override
public String toString() {
	return "uIdx:"+uIdx+
		   ", mdIdx:"+mdIdx+
		   ", mdMR:"+mdMR;
}




}
