package com.medicine.app.qna;


//QnA 게시판
public class QnAVO {

	private int qnaIdx; //QnA 코드
	private int uIdx; //회원 코드
	private String question;//질의
	private String answer;//응답
	private String qDate;//QnA 작성일

public int getQnaIdx() {
		return qnaIdx;
	}

	public void setQnaIdx(int qnaIdx) {
		this.qnaIdx = qnaIdx;
	}

	public int getuIdx() {
		return uIdx;
	}

	public void setuIdx(int uIdx) {
		this.uIdx = uIdx;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getqDate() {
		return qDate;
	}

	public void setqDate(String qDate) {
		this.qDate = qDate;
	}

@Override
public String toString() {
	// TODO Auto-generated method stub
	return "qnaIdx:"+qnaIdx+
			", uIdx:"+uIdx+
			", question:"+question+
			", answer:"+answer+
			", qDate:"+qDate;
}
}

