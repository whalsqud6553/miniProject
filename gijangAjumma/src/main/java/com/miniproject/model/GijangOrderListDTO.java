package com.miniproject.model;

//	gijang_orderList_idx                number              default gijang_orderList_seq.nextval primary key,
//  gijang_orderList_SaleBoardIdx		number
//	gijang_orderList_userId             varchar2(1000)      not null,
//	gijang_orderList_userName           varchar2(500)       not null,
//	gijang_orderList_pnum               varchar2(500)       not null,
//	gijang_orderList_productName        varchar2(1000)      not null,
//	gijang_orderList_productDetailName  varchar2(1000)      not null,
//	gijang_orderList_productDetailCount number              not null,
//	gijang_orderList_productDetailPrice varchar2(500)       not null,
//	gijang_orderList_orderDate          date                default sysdate,
//	gijang_orderList_totalPrice         varchar2(500)       not null,
//	gijang_orderList_zipcode            varchar2(500)       not null,
//	gijang_orderList_address            varchar2(500)       not null,
//	gijang_orderList_detailAddress      varchar2(500)       not null,
//	gijang_orderList_extraAddress       varchar2(500)       ,
//  gijang_orderList_paymentstatus		varchar2(10)

public class GijangOrderListDTO {

	private int gijang_OrderList_Idx;
	private int gijang_OrderList_SaleBoardIdx;
	private String gijang_OrderList_UserId;
	private String gijang_OrderList_UserName;
	private String gijang_OrderList_Pnum;
	private String gijang_OrderList_ProductName;
	private String gijang_OrderList_ProductDetailName;
	private int gijang_OrderList_ProductDetailCount;
	private String gijang_OrderList_ProductDetailPrice;
	private String gijang_OrderList_OrderDate;
	private String gijang_OrderList_TotalPrice;
	private String gijang_OrderList_ZipCode;
	private String gijang_OrderList_Address;
	private String gijang_OrderList_DetailAddress;
	private String gijang_OrderList_ExtraAddress;
	private String gijang_OrderList_PaymentStatus;
	
	// 리뷰 작성 여부
	private String gijang_OrderList_IsReview;
	
	public int getGijang_OrderList_Idx() {
		return gijang_OrderList_Idx;
	}
	public void setGijang_OrderList_Idx(int gijang_OrderList_Idx) {
		this.gijang_OrderList_Idx = gijang_OrderList_Idx;
	}
	public int getGijang_OrderList_SaleBoardIdx() {
		return gijang_OrderList_SaleBoardIdx;
	}
	public void setGijang_OrderList_SaleBoardIdx(int gijang_OrderList_SaleBoardIdx) {
		this.gijang_OrderList_SaleBoardIdx = gijang_OrderList_SaleBoardIdx;
	}
	public String getGijang_OrderList_UserId() {
		return gijang_OrderList_UserId;
	}
	public void setGijang_OrderList_UserId(String gijang_OrderList_UserId) {
		this.gijang_OrderList_UserId = gijang_OrderList_UserId;
	}
	public String getGijang_OrderList_UserName() {
		return gijang_OrderList_UserName;
	}
	public void setGijang_OrderList_UserName(String gijang_OrderList_UserName) {
		this.gijang_OrderList_UserName = gijang_OrderList_UserName;
	}
	public String getGijang_OrderList_Pnum() {
		return gijang_OrderList_Pnum;
	}
	public void setGijang_OrderList_Pnum(String gijang_OrderList_Pnum) {
		this.gijang_OrderList_Pnum = gijang_OrderList_Pnum;
	}
	public String getGijang_OrderList_ProductName() {
		return gijang_OrderList_ProductName;
	}
	public void setGijang_OrderList_ProductName(String gijang_OrderList_ProductName) {
		this.gijang_OrderList_ProductName = gijang_OrderList_ProductName;
	}
	public String getGijang_OrderList_ProductDetailName() {
		return gijang_OrderList_ProductDetailName;
	}
	public void setGijang_OrderList_ProductDetailName(String gijang_OrderList_ProductDetailName) {
		this.gijang_OrderList_ProductDetailName = gijang_OrderList_ProductDetailName;
	}
	public int getGijang_OrderList_ProductDetailCount() {
		return gijang_OrderList_ProductDetailCount;
	}
	public void setGijang_OrderList_ProductDetailCount(int gijang_OrderList_ProductDetailCount) {
		this.gijang_OrderList_ProductDetailCount = gijang_OrderList_ProductDetailCount;
	}
	public String getGijang_OrderList_ProductDetailPrice() {
		return gijang_OrderList_ProductDetailPrice;
	}
	public void setGijang_OrderList_ProductDetailPrice(String gijang_OrderList_ProductDetailPrice) {
		this.gijang_OrderList_ProductDetailPrice = gijang_OrderList_ProductDetailPrice;
	}
	public String getGijang_OrderList_OrderDate() {
		return gijang_OrderList_OrderDate;
	}
	public void setGijang_OrderList_OrderDate(String gijang_OrderList_OrderDate) {
		this.gijang_OrderList_OrderDate = gijang_OrderList_OrderDate;
	}
	public String getGijang_OrderList_TotalPrice() {
		return gijang_OrderList_TotalPrice;
	}
	public void setGijang_OrderList_TotalPrice(String gijang_OrderList_TotalPrice) {
		this.gijang_OrderList_TotalPrice = gijang_OrderList_TotalPrice;
	}
	public String getGijang_OrderList_ZipCode() {
		return gijang_OrderList_ZipCode;
	}
	public void setGijang_OrderList_ZipCode(String gijang_OrderList_ZipCode) {
		this.gijang_OrderList_ZipCode = gijang_OrderList_ZipCode;
	}
	public String getGijang_OrderList_Address() {
		return gijang_OrderList_Address;
	}
	public void setGijang_OrderList_Address(String gijang_OrderList_Address) {
		this.gijang_OrderList_Address = gijang_OrderList_Address;
	}
	public String getGijang_OrderList_DetailAddress() {
		return gijang_OrderList_DetailAddress;
	}
	public void setGijang_OrderList_DetailAddress(String gijang_OrderList_DetailAddress) {
		this.gijang_OrderList_DetailAddress = gijang_OrderList_DetailAddress;
	}
	public String getGijang_OrderList_ExtraAddress() {
		return gijang_OrderList_ExtraAddress;
	}
	public void setGijang_OrderList_ExtraAddress(String gijang_OrderList_ExtraAddress) {
		this.gijang_OrderList_ExtraAddress = gijang_OrderList_ExtraAddress;
	}
	public String getGijang_OrderList_PaymentStatus() {
		return gijang_OrderList_PaymentStatus;
	}
	public void setGijang_OrderList_PaymentStatus(String gijang_OrderList_PaymentStatus) {
		this.gijang_OrderList_PaymentStatus = gijang_OrderList_PaymentStatus;
	}
	public String getGijang_OrderList_IsReview() {
		return gijang_OrderList_IsReview;
	}
	public void setGijang_OrderList_IsReview(String gijang_OrderList_IsReview) {
		this.gijang_OrderList_IsReview = gijang_OrderList_IsReview;
	}
}
