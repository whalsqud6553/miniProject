package com.miniproject.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.miniproject.model.GijangOrderListDTO;
import com.miniproject.model.GijangSaleBoardDTO;

@Repository
public interface GijangOrderListDAO {

	int insertOrder(GijangOrderListDTO dto);

	int updatePaymentStatus(String gijang_OrderList_UserId);

	List<GijangOrderListDTO> selectOrderListById(String userid);

	List<GijangSaleBoardDTO> selectImgFileNameJoinSaleBoard(String userid);

	void updateIsReview(int gijang_OrderList_Idx);

}
