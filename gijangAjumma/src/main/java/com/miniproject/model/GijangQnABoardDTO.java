package com.miniproject.model;

import java.sql.Date;

//	gijang_qnaBoard_idx         number              default gijang_qnaBoard_seq.nextval primary key,
//	gijang_qnaBoard_title       varchar2(1000)      not null,
//	gijang_qnaBoard_writer      varchar2(500)       not null,
//	gijang_qnaBoard_content     varchar2(4000)      not null,
//	gijang_qnaBoard_wdate       date                default sysdate,
//	gijang_qnaBoard_password    number              not null,
//	gijang_qnaBoard_isanswer    varchar2(2)         default 'N'

public class GijangQnABoardDTO {

	private int gijang_QnABoard_Idx;
	private String gijang_QnABoard_Title;
	private String gijang_QnABoard_Writer;
	private String gijang_QnABoard_Content;
	private Date gijang_QnABoard_Wdate;
	private int gijang_QnABoard_Password;
	private String gijang_QnABoard_IsAnswer; 
	
	public int getGijang_QnABoard_Idx() {
		return gijang_QnABoard_Idx;
	}
	public void setGijang_QnABoard_Idx(int gijang_QnABoard_Idx) {
		this.gijang_QnABoard_Idx = gijang_QnABoard_Idx;
	}
	public String getGijang_QnABoard_Title() {
		return gijang_QnABoard_Title;
	}
	public void setGijang_QnABoard_Title(String gijang_QnABoard_Title) {
		this.gijang_QnABoard_Title = gijang_QnABoard_Title;
	}
	public String getGijang_QnABoard_Writer() {
		return gijang_QnABoard_Writer;
	}
	public void setGijang_QnABoard_Writer(String gijang_QnABoard_Writer) {
		this.gijang_QnABoard_Writer = gijang_QnABoard_Writer;
	}
	public String getGijang_QnABoard_Content() {
		return gijang_QnABoard_Content;
	}
	public void setGijang_QnABoard_Content(String gijang_QnABoard_Content) {
		this.gijang_QnABoard_Content = gijang_QnABoard_Content;
	}
	public Date getGijang_QnABoard_Wdate() {
		return gijang_QnABoard_Wdate;
	}
	public void setGijang_QnABoard_Wdate(Date gijang_QnABoard_Wdate) {
		this.gijang_QnABoard_Wdate = gijang_QnABoard_Wdate;
	}
	public int getGijang_QnABoard_Password() {
		return gijang_QnABoard_Password;
	}
	public void setGijang_QnABoard_Password(int gijang_QnABoard_Password) {
		this.gijang_QnABoard_Password = gijang_QnABoard_Password;
	}
	public String getGijang_QnABoard_IsAnswer() {
		return gijang_QnABoard_IsAnswer;
	}
	public void setGijang_QnABoard_IsAnswer(String gijang_QnABoard_IsAnswer) {
		this.gijang_QnABoard_IsAnswer = gijang_QnABoard_IsAnswer;
	}
}
