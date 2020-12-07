package com.medicine.app.bMark;

import lombok.Data;

@Data
//B_MARK 일반 게시판 별점
public class BMarkVO {

	private int bIdx; // 일반 게시판 코드
	private int uIdx; // 통합 회원 코드
	private int bmr; // 게시판 별점 누적

	@Override
	public String toString() {
		return "bIdx:" + bIdx + ", uIdx:" + uIdx + ", bmr:" + bmr;
	}

}
