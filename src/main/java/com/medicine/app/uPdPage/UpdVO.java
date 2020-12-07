package com.medicine.app.uPdPage;

import lombok.Data;

//ocr 관련
@Data
public class UpdVO {

	private int uIdx; // 통합회원코드
	private int ocrIdx; // 약 등록 코드
	private String ocrSearchDate; // 검색일
	private String mdName; // 약 이름
	private String mdContent; // 약 내용
	private String mdPP_Date; // 조제일자

	@Override
	public String toString() {
		return "uIdx:" + uIdx + ", ocrIdx:" + ocrIdx + ", ocrSearchDate:" + ocrSearchDate + ", mdName:" + mdName
				+ ", mdContent:" + mdContent + ", mdPP_Date:" + mdPP_Date;
	}

}
