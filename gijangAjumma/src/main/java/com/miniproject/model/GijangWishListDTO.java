package com.miniproject.model;

//	gijang_WishList_Idx             number          default gijang_wishList_seq.nextval primary key,
//	gijang_WishList_SaleBoardIdx    number          not null,
//	gijang_WishList_UserId          varchar2(1000)  not null,

public class GijangWishListDTO {

	private int gijang_WishList_Idx;
	private int gijang_WishList_SaleBoardIdx;
	private String gijang_WishList_UserId;
	
	// 조인 목록
	private String gijang_WishList_ProductName;
	private String gijang_WishList_ProductPrice;
	private String gijang_WishList_ImgFileName;
	
	public int getGijang_WishList_Idx() {
		return gijang_WishList_Idx;
	}
	public void setGijang_WishList_Idx(int gijang_WishList_Idx) {
		this.gijang_WishList_Idx = gijang_WishList_Idx;
	}
	public int getGijang_WishList_SaleBoardIdx() {
		return gijang_WishList_SaleBoardIdx;
	}
	public void setGijang_WishList_SaleBoardIdx(int gijang_WishList_SaleBoardIdx) {
		this.gijang_WishList_SaleBoardIdx = gijang_WishList_SaleBoardIdx;
	}
	public String getGijang_WishList_UserId() {
		return gijang_WishList_UserId;
	}
	public void setGijang_WishList_UserId(String gijang_WishList_UserId) {
		this.gijang_WishList_UserId = gijang_WishList_UserId;
	}
	public String getGijang_WishList_ProductName() {
		return gijang_WishList_ProductName;
	}
	public void setGijang_WishList_ProductName(String gijang_WishList_ProductName) {
		this.gijang_WishList_ProductName = gijang_WishList_ProductName;
	}
	public String getGijang_WishList_ProductPrice() {
		return gijang_WishList_ProductPrice;
	}
	public void setGijang_WishList_ProductPrice(String gijang_WishList_ProductPrice) {
		this.gijang_WishList_ProductPrice = gijang_WishList_ProductPrice;
	}
	public String getGijang_WishList_ImgFileName() {
		return gijang_WishList_ImgFileName;
	}
	public void setGijang_WishList_ImgFileName(String gijang_WishList_ImgFileName) {
		this.gijang_WishList_ImgFileName = gijang_WishList_ImgFileName;
	}
}
