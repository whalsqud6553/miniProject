package com.miniproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miniproject.model.GijangOrderListDTO;
import com.miniproject.model.GijangSaleBoardDTO;
import com.miniproject.repository.GijangOrderListDAO;

@Service
public class GijangOrderListService {

	@Autowired
	private GijangOrderListDAO gijangOrderListDAO;
	
	public List<GijangOrderListDTO> selectOrderListById(String userid) {
		return gijangOrderListDAO.selectOrderListById(userid);
	}

	public List<GijangSaleBoardDTO> selectImgFileNameJoinSaleBoard(String userid) {
		return gijangOrderListDAO.selectImgFileNameJoinSaleBoard(userid);
	}

	public void updateIsReview(int gijang_OrderList_Idx) {
		gijangOrderListDAO.updateIsReview(gijang_OrderList_Idx);
	}
	
}
