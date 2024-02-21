package com.miniproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miniproject.model.GijangMemberDTO;
import com.miniproject.repository.GijangOrderListDAO;

@Controller
@RequestMapping("/payment")
public class PaymentController {
	
	@Autowired private GijangOrderListDAO gijangOrderListDAO;

	@GetMapping("/paymentapproval")
	public String paymentapproval(HttpSession session) {
		// 결제성공 페이지로 왔다면 해당 테이블에서 결제여부 컬럼 업데이트
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		String gijang_OrderList_UserId = user.getGijang_Member_UserId();
		// 로그인한 userid로 조건 검
		int row = gijangOrderListDAO.updatePaymentStatus(gijang_OrderList_UserId);
		System.out.println(row + "행 업데이트");
		
		return "/payment/paymentapproval";
	}
	
	@GetMapping("/paymentcancel")
	public String paymentcancel() {
		return "/payment/paymentcancel";
	}
	
	@GetMapping("/paymentfail")
	public String paymentfail() {
		return "/payment/paymentfail";
	}
}
