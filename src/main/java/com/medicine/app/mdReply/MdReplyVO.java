package com.medicine.app.mdReply;

import lombok.Data;
import lombok.Setter;

//MD_REPLY 약 게시판_댓글
@Data
public class MdReplyVO {
	private int uReIdx; // 댓글 코드
	private int uIdx; // 회원코드
	private int mdIdx; // 약 코드
	private String uReContent; // 댓글 내용
	private String uReDate; // 댓글 작성일
	private String uName;


	@Override
	public String toString() {
		return ", uName:" + uName + ", uReIdx:" + uReIdx + ", uIdx:" + uIdx + ", mdIdx:" + mdIdx + ", uReContent:"
				+ uReContent + ", uReDate:" + uReDate;
	}

}
