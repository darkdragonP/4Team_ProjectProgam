package com.medicine.app.mdMark;

import lombok.Data;

//MD_MARK 약 게시판 별점
@Data
public class MdMarkVO {

	private int uIdx; // 통합회원코드
	private int mdIdx; // 약 코드
	private int mdMR; // 약 리스트 별점 누적
	
	@Override
	public String toString() {
		return "uIdx:" + uIdx + ", mdIdx:" + mdIdx + ", mdMR:" + mdMR;
	}

}
