package com.miniproject.service;

import java.text.DecimalFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miniproject.component.FileComponent;
import com.miniproject.model.GijangSaleBoardDTO;
import com.miniproject.model.ProductDetailCommonDTO;
import com.miniproject.model.ProductDetailIndividualDTO;
import com.miniproject.repository.GijangSaleBoardDAO;

@Service
public class GijangSaleBoardService {

	@Autowired private GijangSaleBoardDAO gijangSaleBoardDAO;
	@Autowired private FileComponent fileComponent;

	public List<GijangSaleBoardDTO> selectAllList() {
		return gijangSaleBoardDAO.selectAllList();
	}

	public int insertProduct(GijangSaleBoardDTO dto) {
		// 파일 이름 바꿔서 저장하기
		String fileName = fileComponent.getFileName(dto.getLogoImg());
		dto.setGijang_SaleBoard_ImgFileName(fileName);
		
		// 천단위 콤마 추가해서 저장하기
		DecimalFormat df = new DecimalFormat("###,###");
		String price = df.format(Integer.parseInt(dto.getGijang_SaleBoard_Price()));
		dto.setGijang_SaleBoard_Price(price);
		
		int row = gijangSaleBoardDAO.insertProduct(dto);
		return row;
	}

	public GijangSaleBoardDTO selectOneByIdx(int gijang_SaleBoard_Idx) {
		return gijangSaleBoardDAO.selectOneByIdx(gijang_SaleBoard_Idx);
	}

	public int deleteProductByIdx(int gijang_SaleBoard_Idx) {
		GijangSaleBoardDTO dto = gijangSaleBoardDAO.selectOneByIdx(gijang_SaleBoard_Idx);
		String fileName = dto.getGijang_SaleBoard_ImgFileName();
		fileComponent.deleteFile(fileName);
		
		return gijangSaleBoardDAO.deleteProductByIdx(gijang_SaleBoard_Idx);
	}

	public List<GijangSaleBoardDTO> banchanFishList() {
		return gijangSaleBoardDAO.banchanFishList();
	}

	public List<GijangSaleBoardDTO> jeasuyongFishList() {
		return gijangSaleBoardDAO.jeasuyongFishList();
	}

	public List<GijangSaleBoardDTO> jeasuyongSeeFoodList() {
		return gijangSaleBoardDAO.jeasuyongSeeFoodList();
	}

	public int modifyProduct(GijangSaleBoardDTO dto) {
		// 파일 이름 바꿔서 저장하기
		String fileName = fileComponent.getFileName(dto.getLogoImg());
		dto.setGijang_SaleBoard_ImgFileName(fileName);
		
		// 천단위 콤마 추가해서 저장하기
		DecimalFormat df = new DecimalFormat("###,###");
		String price = df.format(Integer.parseInt(dto.getGijang_SaleBoard_Price()));
		dto.setGijang_SaleBoard_Price(price);
		
		return gijangSaleBoardDAO.modifyProduct(dto);
	}

	public int insertProductDetailCommon(int gijang_SaleBoard_Idx, ProductDetailCommonDTO dto) {
		dto.setProductDetail_SaleBoard_Idx(gijang_SaleBoard_Idx);
		String fileName1 = fileComponent.getFileName(dto.getProductDetail_Img1());
		String fileName2 = fileComponent.getFileName(dto.getProductDetail_Img2());
		String fileName3 = fileComponent.getFileName(dto.getProductDetail_Img3());
		String fileName4 = fileComponent.getFileName(dto.getProductDetail_Img4());
		String fileName5 = fileComponent.getFileName(dto.getProductDetail_Img5());
		String fileName6 = fileComponent.getFileName(dto.getProductDetail_Img6());
		String fileName7 = fileComponent.getFileName(dto.getProductDetail_Img7());
		String fileName8 = fileComponent.getFileName(dto.getProductDetail_Img8());
		String fileName9 = fileComponent.getFileName(dto.getProductDetail_Img9());
		String fileName10 = fileComponent.getFileName(dto.getProductDetail_Img10());
		String fileName11 = fileComponent.getFileName(dto.getProductDetail_Img11());
		String fileName12 = fileComponent.getFileName(dto.getProductDetail_Img12());
		String fileName13 = fileComponent.getFileName(dto.getProductDetail_Img13());
		String fileName14 = fileComponent.getFileName(dto.getProductDetail_Img14());
		String fileName15 = fileComponent.getFileName(dto.getProductDetail_Img15());
		String fileName16 = fileComponent.getFileName(dto.getProductDetail_Img16());
		String fileName17 = fileComponent.getFileName(dto.getProductDetail_Img17());
		String fileName18 = fileComponent.getFileName(dto.getProductDetail_Img18());
		String fileName19 = fileComponent.getFileName(dto.getProductDetail_Img19());
		String fileName20 = fileComponent.getFileName(dto.getProductDetail_Img20());
		String fileName21 = fileComponent.getFileName(dto.getProductDetail_Img21());
		String fileName22 = fileComponent.getFileName(dto.getProductDetail_Img22());
		String fileName23 = fileComponent.getFileName(dto.getProductDetail_Img23());
		String fileName24 = fileComponent.getFileName(dto.getProductDetail_Img24());
		String fileName25 = fileComponent.getFileName(dto.getProductDetail_Img25());
		String fileName26 = fileComponent.getFileName(dto.getProductDetail_Img26());
		String fileName27 = fileComponent.getFileName(dto.getProductDetail_Img27());
		
		dto.setProductDetail_ImgFileName1(fileName1);
		dto.setProductDetail_ImgFileName2(fileName2);
		dto.setProductDetail_ImgFileName3(fileName3);
		dto.setProductDetail_ImgFileName4(fileName4);
		dto.setProductDetail_ImgFileName5(fileName5);
		dto.setProductDetail_ImgFileName6(fileName6);
		dto.setProductDetail_ImgFileName7(fileName7);
		dto.setProductDetail_ImgFileName8(fileName8);
		dto.setProductDetail_ImgFileName9(fileName9);
		dto.setProductDetail_ImgFileName10(fileName10);
		dto.setProductDetail_ImgFileName11(fileName11);
		dto.setProductDetail_ImgFileName12(fileName12);
		dto.setProductDetail_ImgFileName13(fileName13);
		dto.setProductDetail_ImgFileName14(fileName14);
		dto.setProductDetail_ImgFileName15(fileName15);
		dto.setProductDetail_ImgFileName16(fileName16);
		dto.setProductDetail_ImgFileName17(fileName17);
		dto.setProductDetail_ImgFileName18(fileName18);
		dto.setProductDetail_ImgFileName19(fileName19);
		dto.setProductDetail_ImgFileName20(fileName20);
		dto.setProductDetail_ImgFileName21(fileName21);
		dto.setProductDetail_ImgFileName22(fileName22);
		dto.setProductDetail_ImgFileName23(fileName23);
		dto.setProductDetail_ImgFileName24(fileName24);
		dto.setProductDetail_ImgFileName25(fileName25);
		dto.setProductDetail_ImgFileName26(fileName26);
		dto.setProductDetail_ImgFileName27(fileName27);
		
		return gijangSaleBoardDAO.insertProductDetailCommon(dto);
	}

	public ProductDetailCommonDTO selectOneDetailCommon(int gijang_SaleBoard_Idx) {
		return gijangSaleBoardDAO.selectOneDetailCommon(gijang_SaleBoard_Idx);
	}

	public int insertProductDetailIndividual(int gijang_SaleBoard_Idx, ProductDetailIndividualDTO dto) {
		dto.setProductDetailIndividual_SaleBoard_Idx(gijang_SaleBoard_Idx);
		
		String fileName1 = fileComponent.getFileName(dto.getIndividual_ImgFile1());
		String fileName2 = fileComponent.getFileName(dto.getIndividual_ImgFile2());
		String fileName3 = fileComponent.getFileName(dto.getIndividual_ImgFile3());
		String fileName4 = fileComponent.getFileName(dto.getIndividual_ImgFile4());
		String fileName5 = fileComponent.getFileName(dto.getIndividual_ImgFile5());
		String fileName6 = fileComponent.getFileName(dto.getIndividual_ImgFile6());
		String fileName7 = fileComponent.getFileName(dto.getIndividual_ImgFile7());
		String fileName8 = fileComponent.getFileName(dto.getIndividual_ImgFile8());
		
		dto.setProductDetailIndividual_ImgFileName1(fileName1);
		dto.setProductDetailIndividual_ImgFileName2(fileName2);
		dto.setProductDetailIndividual_ImgFileName3(fileName3);
		dto.setProductDetailIndividual_ImgFileName4(fileName4);
		dto.setProductDetailIndividual_ImgFileName5(fileName5);
		dto.setProductDetailIndividual_ImgFileName6(fileName6);
		dto.setProductDetailIndividual_ImgFileName7(fileName7);
		dto.setProductDetailIndividual_ImgFileName8(fileName8);
		
		return gijangSaleBoardDAO.insertProductDetailIndividual(dto);
	}

	public ProductDetailIndividualDTO selectOneDetailIndividual(int gijang_SaleBoard_Idx) {
		return gijangSaleBoardDAO.selectOneDetailIndividual(gijang_SaleBoard_Idx);
	}
	
}
