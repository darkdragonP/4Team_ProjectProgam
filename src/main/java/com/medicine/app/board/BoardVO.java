package com.medicine.app.board;

import lombok.Data;

@Data
//BOARD 일반 게시판
public class BoardVO {

	private int bIdx; // 일반 게시판 코드
	private int uIdx; // 통합 회원 코드
	private String bTitle; // 일반 게시판 제목
	private String bContents; // 일반 게시판 내용
	private String bDate; // 일반 게시판 작성일
	private int bHits; // 일반 게시판 조회수 누적
	private int bRating; // 일반 게시판 별점 누적
	private int bCry; // 일반 게시판 신고 누적

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "bidx:" + bIdx + ", uIdx:" + uIdx + ", bTitle:" + bTitle + ", bContents:" + bContents + ", bDate:"
				+ bDate + ", bHits:" + bHits + ", bRating:" + bRating + ", bCry:" + bCry;
	}

}
