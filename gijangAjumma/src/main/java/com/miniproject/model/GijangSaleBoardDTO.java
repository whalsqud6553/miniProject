
package com.miniproject.model;

import org.springframework.web.multipart.MultipartFile;

//	gijang_saleBoard_idx                number      default GIJANG_SALEBOARD_SEQ.nextval primary key,
//	gijang_saleBoard_imgFileName        varchar2(1000),
//	gijang_saleBoard_title              varchar2(500)       not null,
//	gijang_saleBoard_price              number              not null,
//	gijang_saleBoard_isSold             varchar2(2)         default 'Y'

public class GijangSaleBoardDTO {

	private int gijang_SaleBoard_Idx;
	private String gijang_SaleBoard_ImgFileName;
	private String gijang_SaleBoard_Title;
	private String gijang_SaleBoard_Price;
	private String gijang_SaleBoard_IsSold;
	private String gijang_SaleBoard_Type;
	
	// 이미지 파일
	private MultipartFile logoImg;
	
	public int getGijang_SaleBoard_Idx() {
		return gijang_SaleBoard_Idx;
	}
	public void setGijang_SaleBoard_Idx(int gijang_SaleBoard_Idx) {
		this.gijang_SaleBoard_Idx = gijang_SaleBoard_Idx;
	}
	public String getGijang_SaleBoard_ImgFileName() {
		return gijang_SaleBoard_ImgFileName;
	}
	public void setGijang_SaleBoard_ImgFileName(String gijang_SaleBoard_ImgFileName) {
		this.gijang_SaleBoard_ImgFileName = gijang_SaleBoard_ImgFileName;
	}
	public String getGijang_SaleBoard_Title() {
		return gijang_SaleBoard_Title;
	}
	public void setGijang_SaleBoard_Title(String gijang_SaleBoard_Title) {
		this.gijang_SaleBoard_Title = gijang_SaleBoard_Title;
	}
	public String getGijang_SaleBoard_Price() {
		return gijang_SaleBoard_Price;
	}
	public void setGijang_SaleBoard_Price(String gijang_SaleBoard_Price) {
		this.gijang_SaleBoard_Price = gijang_SaleBoard_Price;
	}
	public String getGijang_SaleBoard_IsSold() {
		return gijang_SaleBoard_IsSold;
	}
	public void setGijang_SaleBoard_IsSold(String gijang_SaleBoard_IsSold) {
		this.gijang_SaleBoard_IsSold = gijang_SaleBoard_IsSold;
	}
	public MultipartFile getLogoImg() {
		return logoImg;
	}
	public void setLogoImg(MultipartFile logoImg) {
		this.logoImg = logoImg;
	}
	public String getGijang_SaleBoard_Type() {
		return gijang_SaleBoard_Type;
	}
	public void setGijang_SaleBoard_Type(String gijang_SaleBoard_Type) {
		this.gijang_SaleBoard_Type = gijang_SaleBoard_Type;
	}
}
