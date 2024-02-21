package com.miniproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.miniproject.model.GijangMemberDTO;
import com.miniproject.model.GijangOrderListDTO;
import com.miniproject.repository.GijangOrderListDAO;

@RestController
@RequestMapping("/order")
public class OrderAjaxController {
	
	@Autowired private GijangOrderListDAO gijangOrderListDAO;

	@GetMapping("/orderInsert")
	public void orderInsert(int saleBoardIdx,String productName, String productDetailName, String productDetailPrice, 
			int productDetailCount, String totalPrice, HttpSession session) {
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		GijangOrderListDTO dto = new GijangOrderListDTO();
		dto.setGijang_OrderList_SaleBoardIdx(saleBoardIdx);
		dto.setGijang_OrderList_UserId(user.getGijang_Member_UserId());
		dto.setGijang_OrderList_UserName(user.getGijang_Member_UserName());
		dto.setGijang_OrderList_Pnum(user.getGijang_Member_Pnum());
		dto.setGijang_OrderList_ZipCode(user.getGijang_Member_Zipcode());
		dto.setGijang_OrderList_Address(user.getGijang_Member_Address());
		dto.setGijang_OrderList_DetailAddress(user.getGijang_Member_DetailAddress());
		dto.setGijang_OrderList_ExtraAddress(user.getGijang_Member_ExtraAddress());
		dto.setGijang_OrderList_ProductName(productName);
		dto.setGijang_OrderList_ProductDetailName(productDetailName);
		dto.setGijang_OrderList_ProductDetailPrice(productDetailPrice);
		dto.setGijang_OrderList_ProductDetailCount(productDetailCount);
		dto.setGijang_OrderList_TotalPrice(totalPrice);
		
		int row = gijangOrderListDAO.insertOrder(dto);
		System.out.println(row + "행 추가");
	}
}
