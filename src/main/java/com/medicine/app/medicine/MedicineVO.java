package com.medicine.app.medicine;

import lombok.Data;

//MEDICINE 약 게시판
@Data
public class MedicineVO {

	private int uIdx; // 통합회원코드
	private int mdIdx; // 약 코드
	private String mdTitle; // 약 이름 @
	private String mdGrade; // 약 구분 @
	private String mdDate; // 약 등록일
	private String mdHits; // 약 게시판 누적 접속자
	private String mdRating; // 약 게시판 누적 별점
	private String mdImage; // 약 이미지
	private String mdShape; // 약 모양 @ /
	private String mdColor; // 약 색깔 @ /
	private String mdType; // 약 제형 @ /
	private String mdLine; // 약 분할선 @
	private String mdEffect; // 약 효능효과 @ /
	private String mdCapa; // 약 용법 용량 @ /
	private String mdCaut; // 약 주의사항 @ /
	private String mdSave; // 약 저장정보 @ /
	private String mdIngd; // 약 성분정보 @ /
	private String mdComp; // 약 업체명
	private String mdClass; // 식약처 분류 @
	private String mdAppr; // 약 성상 @ /
	private String mdIn; // 약 식별표기 @ /


	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "uIdx:" + uIdx + ", mdIdx:" + mdIdx + ", mdTitle:" + mdTitle + ", mdGrade:" + mdGrade + ", mdDate:"
				+ mdDate + ", mdHits:" + mdHits + ", mdRating:" + mdRating + ", mdImage:" + mdImage + ", mdShape:"
				+ mdShape + ", mdColor:" + mdColor + ", mdType:" + mdType + ", mdLine:" + mdLine + ", mdEffect:"
				+ mdEffect + ", mdCapa:" + mdCapa + ", mdSave:" + mdSave + ", mdIngd:" + mdIngd + ", mdComp:" + mdComp
				+ ", mdClass:" + mdClass + ", mdAppr:" + mdIn;
	}

}
