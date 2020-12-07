package com.medicine.app;

import java.util.ArrayList;
import java.util.List;

public class MdBoardCounts {
	private int prevBlock;
	/** 다음 시작 블럭 **/
	private int nextStartBlock;

	/** 다음 종료 블럭 **/
	private int nextEndBlock;

	/** 시작 페이지 **/
	private int startPage = 1;

	/** 끝 페이지 **/
	private int endPage = 10;

	/** 시작 index **/
	private int startIndex = 0;

	/** 끝 index **/
	private int endIndex;

	private int listCnt; // 총 게시글 수

	private int pageCnt; // 총 페이지 수

	private int rangeCnt;// 총 블럭 수

	private List<List<Integer>> countPage; // 10개단위 리스트 묶음(전체)

	private List<List<Integer>> countBlock; // 10개단위 페이지 묶음(전체)

	/** 현재 페이지 **/
	private int curPage;

	/** 현재 블럭(range) **/
	private int curRange;
	
	private String textMedicine;

	private String mdShape;
	
	private String mdColor;
	
	private String mdType;
	
	private String mdLine;
	
	
	
	
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

	public String getTextMedicine() {
		return textMedicine;
	}

	public void setTextMedicine(String textMedicine) {
		this.textMedicine = textMedicine;
	}

	public int getPrevBlock() {
		return prevBlock;
	}

	public void setPrevBlock(int prevBlock) {
		this.prevBlock = prevBlock;
	}

	public int getNextStartBlock() {
		return nextStartBlock;
	}

	public void setNextStartBlock(int nextStartBlock) {
		this.nextStartBlock = nextStartBlock;
	}

	public int getNextEndBlock() {
		return nextEndBlock;
	}

	public void setNextEndBlock(int nextEndBlock) {
		this.nextEndBlock = nextEndBlock;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getCurRange() {
		return curRange;
	}

	public void setCurRange(int curRange) {
		this.curRange = curRange;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public int getEndIndex() {
		return endIndex;
	}

	public int getListCnt() {
		return listCnt;
	}

	public int getPageCnt() {
		return pageCnt;
	}

	public int getRangeCnt() {
		return rangeCnt;
	}

	public List<List<Integer>> getCountPage() {
		return countPage;
	}

	public List<List<Integer>> getCountBlock() {
		return countBlock;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public void setPage(int curPage, int startp, int curRange) {
		this.startIndex = countPage.get(curPage - 1).get(0);
		this.endIndex = countPage.get(curPage - 1).get(countPage.get(curPage - 1).size() - 1);
		this.startPage = startp;
		this.endPage = countBlock.get(curRange).get(countBlock.get(curRange).size() - 1);
		this.curPage = curPage;
		this.curRange = curRange;

	}

	public void nextSetBlock(int curRange) {
		this.startPage = countBlock.get(curRange + 1).get(0);
		this.endPage = countBlock.get(curRange + 1).get(countBlock.get(curRange + 1).size() - 1);
		this.startIndex = countPage.get(startPage - 1).get(0);
		this.endIndex = countPage.get(startPage - 1).get(countPage.get(startPage - 1).size() - 1);
		this.curPage = startPage;
		this.curRange = curRange + 1;

	}

	public void prevSetBlock(int curRange) {
		this.startPage = countBlock.get(curRange - 1).get(0);
		this.endPage = countBlock.get(curRange - 1).get(countBlock.get(curRange - 1).size() - 1);
		this.startIndex = countPage.get(startPage - 1).get(0);
		this.endIndex = countPage.get(startPage - 1).get(countPage.get(startPage - 1).size() - 1);
		this.curPage = startPage;
		this.curRange = curRange - 1;
	}

	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
		ArrayList<Integer> countList = new ArrayList<Integer>();
		for (int Counts = 1; Counts <= listCnt; Counts++) {
			countList.add(Counts);
		}
		setPageCnt(countList);
	}

	public void setPageCnt(List<Integer> CountList) {
		List<List<Integer>> CountPage = chopped(CountList, 10);
		this.pageCnt = CountPage.size();
		this.countPage = CountPage;

		ArrayList<Integer> countPList = new ArrayList<Integer>();
		for (int Counts = 1; Counts <= pageCnt; Counts++) {
			countPList.add(Counts);
		}
		setRangeCnt(countPList);

	}

	public void setRangeCnt(List<Integer> CountPList) {
		List<List<Integer>> CountBlock = chopped(CountPList, 10);
		this.countBlock = CountBlock;
		this.rangeCnt = CountBlock.size();
	}

	public <T> List<List<T>> chopped(List<T> list, final int L) {
		List<List<T>> parts = new ArrayList<List<T>>();
		final int N = list.size();
		for (int i = 0; i < N; i += L) {
			parts.add(new ArrayList<T>(list.subList(i, Math.min(N, i + L))));
		}
		return parts;
	}

}
