package com.miniproject.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.miniproject.model.GijangSaleBoardDTO;
import com.miniproject.model.ProductDetailCommonDTO;
import com.miniproject.model.ProductDetailIndividualDTO;

@Repository
public interface GijangSaleBoardDAO {

	List<GijangSaleBoardDTO> selectAllList();

	int insertProduct(GijangSaleBoardDTO dto);

	GijangSaleBoardDTO selectOneByIdx(int gijang_SaleBoard_Idx);

	int deleteProductByIdx(int gijang_SaleBoard_Idx);

	List<GijangSaleBoardDTO> banchanFishList();

	List<GijangSaleBoardDTO> jeasuyongFishList();

	List<GijangSaleBoardDTO> jeasuyongSeeFoodList();

	int modifyProduct(GijangSaleBoardDTO dto);

	int insertProductDetailCommon(ProductDetailCommonDTO dto);

	ProductDetailCommonDTO selectOneDetailCommon(int gijang_SaleBoard_Idx);

	int insertProductDetailIndividual(ProductDetailIndividualDTO dto);

	ProductDetailIndividualDTO selectOneDetailIndividual(int gijang_SaleBoard_Idx);

}
