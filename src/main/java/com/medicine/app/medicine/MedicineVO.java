package com.medicine.app.medicine;

//MEDICINE 약 게시판
public class MedicineVO {

	private int uIdx; // 통합회원코드
	private int mdIdx; // 약 코드
	private String mdTitle; // 약 이름 @
	private String mdGrade; // 약 구분 @
	private String mdDate; // 약 등록일
	private String mdHits; // 약 게시판 누적 접속자
	private String mdRating; // 약 게시판 누적 별점
	private String mdImage; // 약 이미지
	private String mdShape; // 약 모양 @
	private String mdColor; // 약 색깔 @
	private String mdType; // 약 제형 @
	private String mdLine; // 약 분할선 @
	private String mdEffect; // 약 효능효과 @
	private String mdCapa; // 약 용법 용량 @
	private String mdCaut; // 약 주의사항 @
	private String mdSave; // 약 저장정보 @
	private String mdIngd; // 약 성분정보 @
	private String mdComp; // 약 업체명
	private String mdClass; // 식약처 분류 @
	private String mdAppr; // 약 성상 @
	private String mdIn; // 약 식별표기 @

	public int getuIdx() {
		return uIdx;
	}

	public void setuIdx(int uIdx) {
		this.uIdx = uIdx;
	}

	public int getMdIdx() {
		return mdIdx;
	}

	public void setMdIdx(int mdIdx) {
		this.mdIdx = mdIdx;
	}

	public String getMdTitle() {
		return mdTitle;
	}

	public void setMdTitle(String mdTitle) {
		this.mdTitle = mdTitle;
	}

	public String getMdGrade() {
		return mdGrade;
	}

	public void setMdGrade(String mdGrade) {
		this.mdGrade = mdGrade;
	}

	public String getMdDate() {
		return mdDate;
	}

	public void setMdDate(String mdDate) {
		this.mdDate = mdDate;
	}

	public String getMdHits() {
		return mdHits;
	}

	public void setMdHits(String mdHits) {
		this.mdHits = mdHits;
	}

	public String getMdRating() {
		return mdRating;
	}

	public void setMdRating(String mdRating) {
		this.mdRating = mdRating;
	}

	public String getMdImage() {
		return mdImage;
	}

	public void setMdImage(String mdImage) {
		this.mdImage = mdImage;
	}

	public String getMdShape() {
		return mdShape;
	}

	public void setMdShape(String mdShape) {
		this.mdShape = mdShape;
	}

	public String getMdColor() {
		return mdColor;
	}

	public void setMdColor(String mdColor) {
		this.mdColor = mdColor;
	}

	public String getMdType() {
		return mdType;
	}

	public void setMdType(String mdType) {
		this.mdType = mdType;
	}

	public String getMdLine() {
		return mdLine;
	}

	public void setMdLine(String mdLine) {
		this.mdLine = mdLine;
	}

	public String getMdEffect() {
		return mdEffect;
	}

	public void setMdEffect(String mdEffect) {
		this.mdEffect = mdEffect;
	}

	public String getMdCapa() {
		return mdCapa;
	}

	public void setMdCapa(String mdCapa) {
		this.mdCapa = mdCapa;
	}

	public String getMdCaut() {
		return mdCaut;
	}

	public void setMdCaut(String mdCaut) {
		this.mdCaut = mdCaut;
	}

	public String getMdSave() {
		return mdSave;
	}

	public void setMdSave(String mdSave) {
		this.mdSave = mdSave;
	}

	public String getMdIngd() {
		return mdIngd;
	}

	public void setMdIngd(String mdIngd) {
		this.mdIngd = mdIngd;
	}

	public String getMdComp() {
		return mdComp;
	}

	public void setMdComp(String mdComp) {
		this.mdComp = mdComp;
	}

	public String getMdClass() {
		return mdClass;
	}

	public void setMdClass(String mdClass) {
		this.mdClass = mdClass;
	}

	public String getMdAppr() {
		return mdAppr;
	}

	public void setMdAppr(String mdAppr) {
		this.mdAppr = mdAppr;
	}

	public String getMdIn() {
		return mdIn;
	}

	public void setMdIn(String mdIn) {
		this.mdIn = mdIn;
	}

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
