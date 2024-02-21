package com.miniproject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.miniproject.model.GijangMemberDTO;
import com.miniproject.model.GijangOrderListDTO;
import com.miniproject.model.GijangSaleBoardDTO;
import com.miniproject.model.GijangWishListDTO;
import com.miniproject.service.GijangMemberService;
import com.miniproject.service.GijangOrderListService;

@Controller
@RequestMapping("/member")
public class GijangMemberController {
	
	@Autowired
	private GijangMemberService gijangMemberService;
	@Autowired
	private GijangOrderListService gijangOrderListService;
	
	// 로그인
	@GetMapping("/login")
	public String login() {
		return "member/login";
	}
	@PostMapping("/login")
	public String login(GijangMemberDTO dto, HttpSession session) {
		GijangMemberDTO login = gijangMemberService.loginMember(dto);
		if(login == null) {
			return "/member/login_msg";
		}
		session.setAttribute("user", login);
		
		return "redirect:/";
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// 회원가입
	@GetMapping("/join")
	public String join() {
		return "member/join";
	}
	@PostMapping("/join")
	public ModelAndView join(GijangMemberDTO dto) {
		ModelAndView mav = new ModelAndView("/member/join_msg");
		int row = gijangMemberService.joinMember(dto);
		
		mav.addObject("row", row);
		return mav;
	}
	
	// 회원 탈퇴
	@GetMapping("/deleteMember/{gijang_Member_Idx}")
	public ModelAndView deleteMember(@PathVariable("gijang_Member_Idx") int gijang_Member_Idx) {
		ModelAndView mav = new ModelAndView("/member/deleteMember_msg");
		int row = gijangMemberService.deleteMember(gijang_Member_Idx);
		mav.addObject("row", row);
		
		return mav;
	}
	
	// 마이페이지
	@GetMapping("/mypage")
	public String mypage() {
		return "/member/mypage";
	}
	
	// 내 정보 수정
	@GetMapping("/myInformationModify_pwCheck")
	public String myInformationModifyPwCheck() {
		return "member/myInformationModify_pwCheck";
	}
	
	// 내 정보 수정 페이지에 들어가려면 비밀번호 확인
	@PostMapping("/myInformationModify_pwCheck")
	public ModelAndView myInformationModify_pwCheck(HttpSession session, String gijang_Member_UserPw) {
		ModelAndView mav = new ModelAndView("member/myInfoPwCheck_msg");
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		
		int row = gijangMemberService.myInformationModifyPwCheck(gijang_Member_UserPw, user);
		mav.addObject("row", row);
		
		return mav;
	}
	
	// 내 정보 출력
	@GetMapping("/myInformationModify")
	public ModelAndView myInformationModify(HttpSession session) {
		ModelAndView mav = new ModelAndView("member/myInformationModify");
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		if(user != null) {
			String textUserId = user.getGijang_Member_UserId();
			
			GijangMemberDTO dto = gijangMemberService.selectOneById(textUserId);
			mav.addObject("dto", dto);
		}
		
		return mav;
	}
	
	// 정보 수정 입력받음
	@PostMapping("/myInformationModify")
	public ModelAndView myInformationModify(GijangMemberDTO dto, HttpSession session) {
		ModelAndView mav = new ModelAndView("member/myInformationModify_msg");
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		if(user != null) {
			dto.setGijang_Member_UserId(user.getGijang_Member_UserId());
		}
		
		int row = gijangMemberService.updateMember(dto);
		mav.addObject("row", row);
		
		return mav;
	}
	
	// 비밀번호 변경 폼
	@GetMapping("/passwordModify")
	public String passwordModify() {
		return "member/passwordModify";
	}
	
	// 변경 할 비밀번호 받기
	@PostMapping("/passwordModify")
	public ModelAndView passwordModify(String password, HttpSession session) {
		ModelAndView mav = new ModelAndView("member/passwordModify_msg");
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		
		int row = gijangMemberService.updatePassword(user, password);
		mav.addObject("row", row);
		
		return mav;
	}
	
	// 주문목록
	@GetMapping("/myOrderList")
	public ModelAndView myOrderList(HttpSession session) {
		ModelAndView mav = new ModelAndView("/member/myOrderList");
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		if(user != null) {
			String userid = user.getGijang_Member_UserId();
			List<GijangOrderListDTO> list = gijangOrderListService.selectOrderListById(userid);
			List<GijangSaleBoardDTO> saleboard = gijangOrderListService.selectImgFileNameJoinSaleBoard(userid);
			mav.addObject("list", list);
			mav.addObject("saleboard", saleboard);
		}
		
		return mav;
	}
	
	// 찜목록 ajax 추가
	@GetMapping("/addWishList")
	@ResponseBody
	public String addWishList(int saleBoardIdx, String userId) {
		GijangWishListDTO dto = new GijangWishListDTO();
		dto.setGijang_WishList_SaleBoardIdx(saleBoardIdx);
		dto.setGijang_WishList_UserId(userId);
		
		GijangWishListDTO check = gijangMemberService.selectWishListDuplicationCheck(dto);
		if(check == null) {
			int row = gijangMemberService.insertWishList(dto);
			System.out.println(row + "행 추가");
			
			return "true";
		}
		else {
			return "false";
		}
	}
	
	// 찜목록 반환
	@GetMapping("/myWishList")
	public ModelAndView selectWishList(HttpSession session) {
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		ModelAndView mav = new ModelAndView("/member/myWishList");
		
		if(user != null) {
			String userId = user.getGijang_Member_UserId();
			List<GijangSaleBoardDTO> list = gijangMemberService.selectWishList(userId);
			mav.addObject("list", list);
			
		}
		
		return mav;
	}
	
	// 찜목록 삭제
	@GetMapping("/deleteWishList/{gijang_SaleBoard_Idx}")
	public ModelAndView deleteWishList(@PathVariable("gijang_SaleBoard_Idx") int gijang_SaleBoard_Idx) {
		ModelAndView mav = new ModelAndView("/member/deleteWishList_msg");
		int row = gijangMemberService.deleteWishListByIdx(gijang_SaleBoard_Idx);
		mav.addObject("row", row);
		
		return mav;
	}
}
