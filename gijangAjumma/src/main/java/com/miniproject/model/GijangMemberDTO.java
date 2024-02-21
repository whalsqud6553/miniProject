package com.miniproject.model;

//	GIJANG_MEMBER_IDX           NOT NULL NUMBER
//	GIJANG_MEMBER_USERNAME		NOT NULL VARCHAR2(500)
//	GIJANG_MEMBER_USERID        NOT NULL VARCHAR2(500)  
//	GIJANG_MEMBER_USERPW        NOT NULL VARCHAR2(100)  
//	GIJANG_MEMBER_SALT          NOT NULL VARCHAR2(1000) 
//	GIJANG_MEMBER_EMAIL         NOT NULL VARCHAR2(500)  
//	GIJANG_MEMBER_PNUM          NOT NULL VARCHAR2(300)
//  GIJANG_MEMBER_BIRTH			NOT NULL VARCHAR2(500)
//	GIJANG_MEMBER_ZIPCODE       NOT NULL VARCHAR2(500)  
//	GIJANG_MEMBER_ADDRESS       NOT NULL VARCHAR2(500)  
//	GIJANG_MEMBER_DETAILADDRESS NOT NULL VARCHAR2(500)  
//	GIJANG_MEMBER_EXTRAADDRESS           VARCHAR2(500)  
//	GIJANG_MEMBER_ISADMIN                VARCHAR2(10)  


public class GijangMemberDTO {

	private int gijang_Member_Idx;
	private String gijang_Member_UserName;
	private String gijang_Member_UserId;
	private String gijang_Member_Userpw;
	private String gijang_Member_Salt;
	private String gijang_Member_Email;
	private String gijang_Member_Pnum;
	private String gijang_Member_Birth;
	private String gijang_Member_Zipcode;
	private String gijang_Member_Address;
	private String gijang_Member_DetailAddress;
	private String gijang_Member_ExtraAddress;
	private String gijang_Member_IsAdmin;
	
	public int getGijang_Member_Idx() {
		return gijang_Member_Idx;
	}
	public void setGijang_Member_Idx(int gijang_Member_Idx) {
		this.gijang_Member_Idx = gijang_Member_Idx;
	}
	public String getGijang_Member_UserName() {
		return gijang_Member_UserName;
	}
	public void setGijang_Member_UserName(String gijang_Member_UserName) {
		this.gijang_Member_UserName = gijang_Member_UserName;
	}
	public String getGijang_Member_UserId() {
		return gijang_Member_UserId;
	}
	public void setGijang_Member_UserId(String gijang_Member_UserId) {
		this.gijang_Member_UserId = gijang_Member_UserId;
	}
	public String getGijang_Member_Userpw() {
		return gijang_Member_Userpw;
	}
	public void setGijang_Member_Userpw(String gijang_Member_Userpw) {
		this.gijang_Member_Userpw = gijang_Member_Userpw;
	}
	public String getGijang_Member_Salt() {
		return gijang_Member_Salt;
	}
	public void setGijang_Member_Salt(String gijang_Member_Salt) {
		this.gijang_Member_Salt = gijang_Member_Salt;
	}
	public String getGijang_Member_Email() {
		return gijang_Member_Email;
	}
	public void setGijang_Member_Email(String gijang_Member_Email) {
		this.gijang_Member_Email = gijang_Member_Email;
	}
	public String getGijang_Member_Pnum() {
		return gijang_Member_Pnum;
	}
	public void setGijang_Member_Pnum(String gijang_Member_Pnum) {
		this.gijang_Member_Pnum = gijang_Member_Pnum;
	}
	public String getGijang_Member_Birth() {
		return gijang_Member_Birth;
	}
	public void setGijang_Member_Birth(String gijang_Member_Birth) {
		this.gijang_Member_Birth = gijang_Member_Birth;
	}
	public String getGijang_Member_Zipcode() {
		return gijang_Member_Zipcode;
	}
	public void setGijang_Member_Zipcode(String gijang_Member_Zipcode) {
		this.gijang_Member_Zipcode = gijang_Member_Zipcode;
	}
	public String getGijang_Member_Address() {
		return gijang_Member_Address;
	}
	public void setGijang_Member_Address(String gijang_Member_Address) {
		this.gijang_Member_Address = gijang_Member_Address;
	}
	public String getGijang_Member_DetailAddress() {
		return gijang_Member_DetailAddress;
	}
	public void setGijang_Member_DetailAddress(String gijang_Member_DetailAddress) {
		this.gijang_Member_DetailAddress = gijang_Member_DetailAddress;
	}
	public String getGijang_Member_ExtraAddress() {
		return gijang_Member_ExtraAddress;
	}
	public void setGijang_Member_ExtraAddress(String gijang_Member_ExtraAddress) {
		this.gijang_Member_ExtraAddress = gijang_Member_ExtraAddress;
	}
	public String getGijang_Member_IsAdmin() {
		return gijang_Member_IsAdmin;
	}
	public void setGijang_Member_IsAdmin(String gijang_Member_IsAdmin) {
		this.gijang_Member_IsAdmin = gijang_Member_IsAdmin;
	}
}
