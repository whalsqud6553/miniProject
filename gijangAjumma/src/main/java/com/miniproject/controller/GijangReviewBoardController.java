package com.miniproject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.miniproject.model.GijangMemberDTO;
import com.miniproject.model.GijangReviewBoardDTO;
import com.miniproject.model.GijangReviewCommentDTO;
import com.miniproject.model.GijangSaleBoardDTO;
import com.miniproject.model.PagingVO;
import com.miniproject.service.GijangOrderListService;
import com.miniproject.service.GijangReviewBoardService;

@Controller
@RequestMapping("/review")
public class GijangReviewBoardController {

	@Autowired private GijangReviewBoardService gijangReviewBoardService;
	@Autowired private GijangOrderListService gijangOrderListService;
	
	@GetMapping("/reviewWrite/{gijang_OrderList_Idx}")
	public ModelAndView reviewWrite(@PathVariable("gijang_OrderList_Idx") int gijang_OrderList_Idx) {
		ModelAndView mav = new ModelAndView("review/reviewWrite");
		GijangSaleBoardDTO dto = gijangReviewBoardService.selectSaleBoardJoinOrder(gijang_OrderList_Idx);
		mav.addObject("dto", dto);
		
		return mav;
	}
	
	@PostMapping("/reviewWrite/{gijang_OrderList_Idx}")
	public String reviewWrite(@PathVariable("gijang_OrderList_Idx") int gijang_OrderList_Idx, GijangReviewBoardDTO dto
							, HttpSession session) {
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		if(user != null) {
			dto.setGijang_ReviewBoard_Writer(user.getGijang_Member_UserId());
			dto.setGijang_ReviewBoard_OrderListIdx(gijang_OrderList_Idx);
		}
		int row = gijangReviewBoardService.insertReview(dto);
		System.out.println(row + "행 추가");
		
		if(row != 0) {
			gijangOrderListService.updateIsReview(gijang_OrderList_Idx);
		}
		
		return "redirect:/review/reviewList";
	}
	
	@GetMapping("/reviewList")
	public String reviewList(PagingVO vo, Model model,
							@RequestParam(value = "nowPage", required=false) String nowPage,
							@RequestParam(value = "cntPerPage", required=false) String cntPerPage,
							@RequestParam(value = "type", required=false) String type,
							@RequestParam(value = "keyword", required=false) String keyword) {
		// keyword가 null 이라면 전체 리스트 출력
		if(keyword == null && type == null) {
			int total = gijangReviewBoardService.countBoard();
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "10";
			}
			else if(nowPage == null) {
				nowPage = "1";
			}
			else if(cntPerPage == null) {
				cntPerPage = "10";
			}
			vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			model.addAttribute("paging", vo);
			
			List<GijangReviewBoardDTO> list = gijangReviewBoardService.selectOrderListJoinReviewBoard(vo);
			model.addAttribute("list", list);
		}
		else {
			if(type.equals("productName")) {
				int total = gijangReviewBoardService.productNameSearchCountBoard(keyword);
				if(nowPage == null && cntPerPage == null) {
					nowPage = "1";
					cntPerPage = "10";
				}
				else if(nowPage == null) {
					nowPage = "1";
				}
				else if(cntPerPage == null) {
					cntPerPage = "10";
				}
				vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
				vo.setType(type);
				vo.setKeyword(keyword);
				model.addAttribute("productPaging", vo);
				
				List<GijangReviewBoardDTO> productSearchList = gijangReviewBoardService.productSearchList(vo);
				model.addAttribute("productSearchList", productSearchList);
			}
			if(type.equals("writer")) {
				int total = gijangReviewBoardService.writerSearchCountBoard(keyword);
				if(nowPage == null && cntPerPage == null) {
					nowPage = "1";
					cntPerPage = "10";
				}
				else if(nowPage == null) {
					nowPage = "1";
				}
				else if(cntPerPage == null) {
					cntPerPage = "10";
				}
				vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
				vo.setType(type);
				vo.setKeyword(keyword);
				model.addAttribute("writerPaging", vo);
				
				List<GijangReviewBoardDTO> writerSearchList = gijangReviewBoardService.writerSearchList(vo);
				model.addAttribute("writerSearchList", writerSearchList);
			}
		}
		
		return "review/reviewList";
	}
	
	@GetMapping("/reviewOne/{gijang_ReviewBoard_Idx}")
	public ModelAndView reviewOne(@PathVariable("gijang_ReviewBoard_Idx") int gijang_ReviewBoard_Idx) {
		ModelAndView mav = new ModelAndView("review/reviewOne");
		
		GijangReviewBoardDTO dto = gijangReviewBoardService.selectOneByIdx(gijang_ReviewBoard_Idx);
		mav.addObject("dto", dto);
		
		List<GijangReviewCommentDTO> comment = gijangReviewBoardService.selectReviewCommentList(gijang_ReviewBoard_Idx);
		mav.addObject("comment", comment);
		
		return mav;
	}
	
	@PostMapping("/reviewOne/{gijang_ReviewBoard_Idx}")
	public String reviewComment(@PathVariable("gijang_ReviewBoard_Idx") int gijang_ReviewBoard_Idx, GijangReviewCommentDTO dto
							, HttpSession session) {
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		if(user != null) {
			int row = gijangReviewBoardService.insertReviewComment(gijang_ReviewBoard_Idx, dto, user);
			System.out.println(row + "행 추가");
			return "redirect:/review/reviewOne/" + gijang_ReviewBoard_Idx;
		}
		
		return null;
	}
	
	// 게시글 삭제
	@GetMapping("/reviewOneDelete/{gijang_ReviewBoard_Idx}")
	public ModelAndView reviewOneDelete(@PathVariable("gijang_ReviewBoard_Idx") int gijang_ReviewBoard_Idx) {
		ModelAndView mav = new ModelAndView("review/reviewOneDeleteMsg");
		GijangReviewBoardDTO dto = gijangReviewBoardService.selectOneByIdx(gijang_ReviewBoard_Idx);
		int row = gijangReviewBoardService.reviewOneDelete(gijang_ReviewBoard_Idx, dto);
		mav.addObject("row", row);
		
		return mav;
	}
	
	// 게시글 수정
	@GetMapping("/reviewOneModify/{gijang_ReviewBoard_Idx}")
	public ModelAndView reviewOneModify(@PathVariable("gijang_ReviewBoard_Idx") int gijang_ReviewBoard_Idx) {
		ModelAndView mav = new ModelAndView("review/reviewOneModify");
		GijangReviewBoardDTO dto = gijangReviewBoardService.selectOneByIdx(gijang_ReviewBoard_Idx);
		GijangSaleBoardDTO sale = gijangReviewBoardService.selectSaleBoardJoinOrder(dto.getGijang_ReviewBoard_OrderListIdx());
		mav.addObject("dto", dto);
		mav.addObject("sale", sale);
		
		return mav;
	}
	
	@PostMapping("/reviewOneModify/{gijang_ReviewBoard_Idx}")
	public ModelAndView reviewOneModify(HttpSession session, GijangReviewBoardDTO dto) {
		ModelAndView mav = new ModelAndView("review/reviewOneModifyMsg");
		int row = gijangReviewBoardService.reviewOneModify(dto);
		mav.addObject("row", row);
		mav.addObject("dto", dto);
		
		return mav;
	}
}
