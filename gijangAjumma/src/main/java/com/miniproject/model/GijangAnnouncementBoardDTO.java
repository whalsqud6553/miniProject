package com.miniproject.model;

import java.sql.Date;

//	gijang_announcementBoard_idx         number              default gijang_announcementBoard_seq.nextval primary key,
//	gijang_announcementBoard_title       varchar2(1000)      not null,
//	gijang_announcementBoard_writer      varchar2(500)       not null,
//	gijang_announcementBoard_content     varchar2(4000)      not null,
//	gijang_announcementBoard_wdate       date                default sysdate,

public class GijangAnnouncementBoardDTO {

	private int gijang_AnnouncementBoard_Idx;
	private String gijang_AnnouncementBoard_Title;
	private String gijang_AnnouncementBoard_Writer;
	private String gijang_AnnouncementBoard_Content;
	private Date gijang_AnnouncementBoard_Wdate;
	
	public int getGijang_AnnouncementBoard_Idx() {
		return gijang_AnnouncementBoard_Idx;
	}
	public void setGijang_AnnouncementBoard_Idx(int gijang_AnnouncementBoard_Idx) {
		this.gijang_AnnouncementBoard_Idx = gijang_AnnouncementBoard_Idx;
	}
	public String getGijang_AnnouncementBoard_Title() {
		return gijang_AnnouncementBoard_Title;
	}
	public void setGijang_AnnouncementBoard_Title(String gijang_AnnouncementBoard_Title) {
		this.gijang_AnnouncementBoard_Title = gijang_AnnouncementBoard_Title;
	}
	public String getGijang_AnnouncementBoard_Writer() {
		return gijang_AnnouncementBoard_Writer;
	}
	public void setGijang_AnnouncementBoard_Writer(String gijang_AnnouncementBoard_Writer) {
		this.gijang_AnnouncementBoard_Writer = gijang_AnnouncementBoard_Writer;
	}
	public String getGijang_AnnouncementBoard_Content() {
		return gijang_AnnouncementBoard_Content;
	}
	public void setGijang_AnnouncementBoard_Content(String gijang_AnnouncementBoard_Content) {
		this.gijang_AnnouncementBoard_Content = gijang_AnnouncementBoard_Content;
	}
	public Date getGijang_AnnouncementBoard_Wdate() {
		return gijang_AnnouncementBoard_Wdate;
	}
	public void setGijang_AnnouncementBoard_Wdate(Date gijang_AnnouncementBoard_Wdate) {
		this.gijang_AnnouncementBoard_Wdate = gijang_AnnouncementBoard_Wdate;
	}
}
