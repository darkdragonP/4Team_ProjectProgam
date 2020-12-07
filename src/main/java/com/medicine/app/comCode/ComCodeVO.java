package com.medicine.app.comCode;

import lombok.Data;

@Data
//COM_CODE 연락처 및 회원 구분
public class ComCodeVO {
	private String commTyCd; // 코드번호
	private String commCd; // 구분번호
	private String commCdNm; // 구분내용

	@Override
	public String toString() {
		return "commTyCd:" + commTyCd + ", commCd:" + commCd + ", CommCdNm:" + commCdNm;
	}

}
