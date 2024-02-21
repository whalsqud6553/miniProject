package com.miniproject.model;

import org.springframework.web.multipart.MultipartFile;

//	productDetailIndividual_Idx             number          default productDetailIndividual_seq.nextval primary key,
//	productDetailIndividual_SaleBoard_Idx   number          not null,
//	productDetailIndividual_ImgFileName1    varchar2(1000)  ,
//	productDetailIndividual_ImgFileName2    varchar2(1000)  ,
//	productDetailIndividual_ImgFileName3    varchar2(1000)  ,
//	productDetailIndividual_ImgFileName4    varchar2(1000)  ,
//	productDetailIndividual_ImgFileName5    varchar2(1000)  ,
//	productDetailIndividual_ImgFileName6    varchar2(1000)  ,
//	productDetailIndividual_ImgFileName7    varchar2(1000)  ,
//	productDetailIndividual_ImgFileName8    varchar2(1000)  ,

public class ProductDetailIndividualDTO {

	private int productDetailIndividual_Idx;
	private int productDetailIndividual_SaleBoard_Idx;
	private String productDetailIndividual_ImgFileName1;
	private String productDetailIndividual_ImgFileName2;
	private String productDetailIndividual_ImgFileName3;
	private String productDetailIndividual_ImgFileName4;
	private String productDetailIndividual_ImgFileName5;
	private String productDetailIndividual_ImgFileName6;
	private String productDetailIndividual_ImgFileName7;
	private String productDetailIndividual_ImgFileName8;
	
	private MultipartFile individual_ImgFile1;
	private MultipartFile individual_ImgFile2;
	private MultipartFile individual_ImgFile3;
	private MultipartFile individual_ImgFile4;
	private MultipartFile individual_ImgFile5;
	private MultipartFile individual_ImgFile6;
	private MultipartFile individual_ImgFile7;
	private MultipartFile individual_ImgFile8;
	
	public int getProductDetailIndividual_Idx() {
		return productDetailIndividual_Idx;
	}
	public void setProductDetailIndividual_Idx(int productDetailIndividual_Idx) {
		this.productDetailIndividual_Idx = productDetailIndividual_Idx;
	}
	public int getProductDetailIndividual_SaleBoard_Idx() {
		return productDetailIndividual_SaleBoard_Idx;
	}
	public void setProductDetailIndividual_SaleBoard_Idx(int productDetailIndividual_SaleBoard_Idx) {
		this.productDetailIndividual_SaleBoard_Idx = productDetailIndividual_SaleBoard_Idx;
	}
	public String getProductDetailIndividual_ImgFileName1() {
		return productDetailIndividual_ImgFileName1;
	}
	public void setProductDetailIndividual_ImgFileName1(String productDetailIndividual_ImgFileName1) {
		this.productDetailIndividual_ImgFileName1 = productDetailIndividual_ImgFileName1;
	}
	public String getProductDetailIndividual_ImgFileName2() {
		return productDetailIndividual_ImgFileName2;
	}
	public void setProductDetailIndividual_ImgFileName2(String productDetailIndividual_ImgFileName2) {
		this.productDetailIndividual_ImgFileName2 = productDetailIndividual_ImgFileName2;
	}
	public String getProductDetailIndividual_ImgFileName3() {
		return productDetailIndividual_ImgFileName3;
	}
	public void setProductDetailIndividual_ImgFileName3(String productDetailIndividual_ImgFileName3) {
		this.productDetailIndividual_ImgFileName3 = productDetailIndividual_ImgFileName3;
	}
	public String getProductDetailIndividual_ImgFileName4() {
		return productDetailIndividual_ImgFileName4;
	}
	public void setProductDetailIndividual_ImgFileName4(String productDetailIndividual_ImgFileName4) {
		this.productDetailIndividual_ImgFileName4 = productDetailIndividual_ImgFileName4;
	}
	public String getProductDetailIndividual_ImgFileName5() {
		return productDetailIndividual_ImgFileName5;
	}
	public void setProductDetailIndividual_ImgFileName5(String productDetailIndividual_ImgFileName5) {
		this.productDetailIndividual_ImgFileName5 = productDetailIndividual_ImgFileName5;
	}
	public String getProductDetailIndividual_ImgFileName6() {
		return productDetailIndividual_ImgFileName6;
	}
	public void setProductDetailIndividual_ImgFileName6(String productDetailIndividual_ImgFileName6) {
		this.productDetailIndividual_ImgFileName6 = productDetailIndividual_ImgFileName6;
	}
	public String getProductDetailIndividual_ImgFileName7() {
		return productDetailIndividual_ImgFileName7;
	}
	public void setProductDetailIndividual_ImgFileName7(String productDetailIndividual_ImgFileName7) {
		this.productDetailIndividual_ImgFileName7 = productDetailIndividual_ImgFileName7;
	}
	public String getProductDetailIndividual_ImgFileName8() {
		return productDetailIndividual_ImgFileName8;
	}
	public void setProductDetailIndividual_ImgFileName8(String productDetailIndividual_ImgFileName8) {
		this.productDetailIndividual_ImgFileName8 = productDetailIndividual_ImgFileName8;
	}
	public MultipartFile getIndividual_ImgFile1() {
		return individual_ImgFile1;
	}
	public void setIndividual_ImgFile1(MultipartFile individual_ImgFile1) {
		this.individual_ImgFile1 = individual_ImgFile1;
	}
	public MultipartFile getIndividual_ImgFile2() {
		return individual_ImgFile2;
	}
	public void setIndividual_ImgFile2(MultipartFile individual_ImgFile2) {
		this.individual_ImgFile2 = individual_ImgFile2;
	}
	public MultipartFile getIndividual_ImgFile3() {
		return individual_ImgFile3;
	}
	public void setIndividual_ImgFile3(MultipartFile individual_ImgFile3) {
		this.individual_ImgFile3 = individual_ImgFile3;
	}
	public MultipartFile getIndividual_ImgFile4() {
		return individual_ImgFile4;
	}
	public void setIndividual_ImgFile4(MultipartFile individual_ImgFile4) {
		this.individual_ImgFile4 = individual_ImgFile4;
	}
	public MultipartFile getIndividual_ImgFile5() {
		return individual_ImgFile5;
	}
	public void setIndividual_ImgFile5(MultipartFile individual_ImgFile5) {
		this.individual_ImgFile5 = individual_ImgFile5;
	}
	public MultipartFile getIndividual_ImgFile6() {
		return individual_ImgFile6;
	}
	public void setIndividual_ImgFile6(MultipartFile individual_ImgFile6) {
		this.individual_ImgFile6 = individual_ImgFile6;
	}
	public MultipartFile getIndividual_ImgFile7() {
		return individual_ImgFile7;
	}
	public void setIndividual_ImgFile7(MultipartFile individual_ImgFile7) {
		this.individual_ImgFile7 = individual_ImgFile7;
	}
	public MultipartFile getIndividual_ImgFile8() {
		return individual_ImgFile8;
	}
	public void setIndividual_ImgFile8(MultipartFile individual_ImgFile8) {
		this.individual_ImgFile8 = individual_ImgFile8;
	}
	
	
}
