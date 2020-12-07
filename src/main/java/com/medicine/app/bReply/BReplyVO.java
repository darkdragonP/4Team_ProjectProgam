package com.medicine.app.bReply;

import lombok.Data;

@Data
//B_REPLY 일반게시판_댓글
public class BReplyVO {
	private int uReIdx; // 댓글 코드
	private int BIdx; // 일반게시판 코드
	private int uIdx; // 통합회원 코드
	private int uReContent; // 댓글 내용
	private int uReDate; // 댓글 작성일

	@Override
	public String toString() {

		return "uReIdx:" + uReIdx + ", BIdx:" + BIdx + ", uIdx:" + uIdx + ", uReContent:" + uReContent + ", uReDate:"
				+ uReDate;
	}
}
