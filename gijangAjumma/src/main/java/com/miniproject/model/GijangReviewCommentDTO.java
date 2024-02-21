package com.miniproject.model;

import java.sql.Date;

//	gijang_ReviewComment_Idx            number          default GIJANG_REVIEWBOARD_SEQ.nextval primary key,
//	gijang_ReviewComment_ReviewBoardIdx number          not null,
//	gijang_ReviewComment_Writer         varchar2(1000)  not null,
//	gijang_ReviewComment_Content        varchar2(4000)  not null,
//	gijang_ReviewComment_Wdate          date            default sysdate,

public class GijangReviewCommentDTO {

	private int gijang_ReviewComment_Idx;
	private int gijang_ReviewComment_ReviewBoardIdx;
	private String gijang_ReviewComment_Writer;
	private String gijang_ReviewComment_Content;
	private Date gijang_ReviewComment_Wdate;
	
	public int getGijang_ReviewComment_Idx() {
		return gijang_ReviewComment_Idx;
	}
	public void setGijang_ReviewComment_Idx(int gijang_ReviewComment_Idx) {
		this.gijang_ReviewComment_Idx = gijang_ReviewComment_Idx;
	}
	public int getGijang_ReviewComment_ReviewBoardIdx() {
		return gijang_ReviewComment_ReviewBoardIdx;
	}
	public void setGijang_ReviewComment_ReviewBoardIdx(int gijang_ReviewComment_ReviewBoardIdx) {
		this.gijang_ReviewComment_ReviewBoardIdx = gijang_ReviewComment_ReviewBoardIdx;
	}
	public String getGijang_ReviewComment_Writer() {
		return gijang_ReviewComment_Writer;
	}
	public void setGijang_ReviewComment_Writer(String gijang_ReviewComment_Writer) {
		this.gijang_ReviewComment_Writer = gijang_ReviewComment_Writer;
	}
	public String getGijang_ReviewComment_Content() {
		return gijang_ReviewComment_Content;
	}
	public void setGijang_ReviewComment_Content(String gijang_ReviewComment_Content) {
		this.gijang_ReviewComment_Content = gijang_ReviewComment_Content;
	}
	public Date getGijang_ReviewComment_Wdate() {
		return gijang_ReviewComment_Wdate;
	}
	public void setGijang_ReviewComment_Wdate(Date gijang_ReviewComment_Wdate) {
		this.gijang_ReviewComment_Wdate = gijang_ReviewComment_Wdate;
	}
}
