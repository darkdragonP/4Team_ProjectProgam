package com.medicine.app.comCode;


//COM_CODE 연락처 및 회원 구분
public class ComCodeVO {
private String commTyCd; //코드번호
private String commCd; //구분번호
private String commCdNm; //구분내용



public String getCommTyCd() {
	return commTyCd;
}



public void setCommTyCd(String commTyCd) {
	this.commTyCd = commTyCd;
}



public String getCommCd() {
	return commCd;
}



public void setCommCd(String commCd) {
	this.commCd = commCd;
}



public String getCommCdNm() {
	return commCdNm;
}



public void setCommCdNm(String commCdNm) {
	this.commCdNm = commCdNm;
}

@Override
public String toString() {
	return "commTyCd:"+commTyCd+
			", commCd:"+commCd+
			", CommCdNm:"+commCdNm;
}



}
