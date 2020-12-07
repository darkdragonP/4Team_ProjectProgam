package com.medicine.app.qna;

import lombok.Data;

//QnA 게시판
@Data
public class QnAVO {

	private int qnaIdx; // QnA 코드
	private int uIdx; // 회원 코드
	private String question;// 질의
	private String answer;// 응답
	private String qDate;// QnA 작성일

	public String toString() {
		// TODO Auto-generated method stub
		return "qnaIdx:" + qnaIdx + ", uIdx:" + uIdx + ", question:" + question + ", answer:" + answer + ", qDate:"
				+ qDate;
	}
}
