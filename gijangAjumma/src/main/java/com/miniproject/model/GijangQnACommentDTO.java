package com.miniproject.model;

import java.sql.Date;

//	gijang_QnAComment_Idx       number          default gijang_QnAComment_seq.nextval primary key,
//	gijang_QnAComment_QnABoardIdx   number      not null,
//	gijang_QnAComment_writer    varchar2(500)   not null,
//	gijang_QnAComment_content   varchar2(3000)  not null,
//	gijang_QnAComment_wdate     date            default sysdate,

public class GijangQnACommentDTO {

	private int gijang_QnAComment_Idx;
	private int gijang_QnAComment_QnABoardIdx;
	private String gijang_QnAComment_Writer;
	private String gijang_QnAComment_Content;
	private Date gijang_QnAComment_Wdate;
	
	
	public int getGijang_QnAComment_Idx() {
		return gijang_QnAComment_Idx;
	}
	public void setGijang_QnAComment_Idx(int gijang_QnAComment_Idx) {
		this.gijang_QnAComment_Idx = gijang_QnAComment_Idx;
	}
	public int getGijang_QnAComment_QnABoardIdx() {
		return gijang_QnAComment_QnABoardIdx;
	}
	public void setGijang_QnAComment_QnABoardIdx(int gijang_QnAComment_QnABoardIdx) {
		this.gijang_QnAComment_QnABoardIdx = gijang_QnAComment_QnABoardIdx;
	}
	public String getGijang_QnAComment_Writer() {
		return gijang_QnAComment_Writer;
	}
	public void setGijang_QnAComment_Writer(String gijang_QnAComment_Writer) {
		this.gijang_QnAComment_Writer = gijang_QnAComment_Writer;
	}
	public String getGijang_QnAComment_Content() {
		return gijang_QnAComment_Content;
	}
	public void setGijang_QnAComment_Content(String gijang_QnAComment_Content) {
		this.gijang_QnAComment_Content = gijang_QnAComment_Content;
	}
	public Date getGijang_QnAComment_Wdate() {
		return gijang_QnAComment_Wdate;
	}
	public void setGijang_QnAComment_Wdate(Date gijang_QnAComment_Wdate) {
		this.gijang_QnAComment_Wdate = gijang_QnAComment_Wdate;
	}
}
