package com.miniproject.model;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

//	gijang_reviewBoard_idx          number              default gijang_reviewBoard_seq.nextval primary key,
//	gijang_reviewBoard_orderListIdx number              not null,
//	gijang_reviewBoard_writer       varchar2(500)       not null,
//	gijang_reviewBoard_title        varchar2(500)       not null,
//	gijang_reviewBoard_content      varchar2(4000)      not null,
//	gijang_reviewBoard_grade        number(1,1)         not null,
//	gijang_reviewBoard_wdate        date                default sysdate,
//	gijang_reviewBoard_fileName     varchar2(1000)      ,
//	
//	gijang_reviewBoard_isDelete     varchar2(2)         default 'N'

public class GijangReviewBoardDTO {
	
	private int gijang_ReviewBoard_Idx;
	private int gijang_ReviewBoard_OrderListIdx;
	private String gijang_ReviewBoard_Writer;
	private String gijang_ReviewBoard_Title;
	private String gijang_ReviewBoard_Content;
	private double gijang_ReviewBoard_Grade;
	private Date gijang_ReviewBoard_Wdate;
	private String gijang_ReviewBoard_FileName;
	private String gijang_ReviewBoard_IsDelete;
	
	private MultipartFile mpfile;
	
	private String gijang_ReviewBoard_ProductName;

	public int getGijang_ReviewBoard_Idx() {
		return gijang_ReviewBoard_Idx;
	}

	public void setGijang_ReviewBoard_Idx(int gijang_ReviewBoard_Idx) {
		this.gijang_ReviewBoard_Idx = gijang_ReviewBoard_Idx;
	}
	public int getGijang_ReviewBoard_OrderListIdx() {
		return gijang_ReviewBoard_OrderListIdx;
	}

	public void setGijang_ReviewBoard_OrderListIdx(int gijang_ReviewBoard_OrderListIdx) {
		this.gijang_ReviewBoard_OrderListIdx = gijang_ReviewBoard_OrderListIdx;
	}

	public String getGijang_ReviewBoard_Writer() {
		return gijang_ReviewBoard_Writer;
	}

	public void setGijang_ReviewBoard_Writer(String gijang_ReviewBoard_Writer) {
		this.gijang_ReviewBoard_Writer = gijang_ReviewBoard_Writer;
	}

	public String getGijang_ReviewBoard_Title() {
		return gijang_ReviewBoard_Title;
	}

	public void setGijang_ReviewBoard_Title(String gijang_ReviewBoard_Title) {
		this.gijang_ReviewBoard_Title = gijang_ReviewBoard_Title;
	}

	public String getGijang_ReviewBoard_Content() {
		return gijang_ReviewBoard_Content;
	}

	public void setGijang_ReviewBoard_Content(String gijang_ReviewBoard_Content) {
		this.gijang_ReviewBoard_Content = gijang_ReviewBoard_Content;
	}

	public double getGijang_ReviewBoard_Grade() {
		return gijang_ReviewBoard_Grade;
	}

	public void setGijang_ReviewBoard_Grade(double gijang_ReviewBoard_Grade) {
		this.gijang_ReviewBoard_Grade = gijang_ReviewBoard_Grade;
	}

	public Date getGijang_ReviewBoard_Wdate() {
		return gijang_ReviewBoard_Wdate;
	}

	public void setGijang_ReviewBoard_Wdate(Date gijang_ReviewBoard_Wdate) {
		this.gijang_ReviewBoard_Wdate = gijang_ReviewBoard_Wdate;
	}

	public String getGijang_ReviewBoard_FileName() {
		return gijang_ReviewBoard_FileName;
	}

	public void setGijang_ReviewBoard_FileName(String gijang_ReviewBoard_FileName) {
		this.gijang_ReviewBoard_FileName = gijang_ReviewBoard_FileName;
	}

	public String getGijang_ReviewBoard_IsDelete() {
		return gijang_ReviewBoard_IsDelete;
	}

	public void setGijang_ReviewBoard_IsDelete(String gijang_ReviewBoard_IsDelete) {
		this.gijang_ReviewBoard_IsDelete = gijang_ReviewBoard_IsDelete;
	}

	public MultipartFile getMpfile() {
		return mpfile;
	}

	public void setMpfile(MultipartFile mpfile) {
		this.mpfile = mpfile;
	}

	public String getGijang_ReviewBoard_ProductName() {
		return gijang_ReviewBoard_ProductName;
	}

	public void setGijang_ReviewBoard_ProductName(String gijang_ReviewBoard_ProductName) {
		this.gijang_ReviewBoard_ProductName = gijang_ReviewBoard_ProductName;
	}
	
}
