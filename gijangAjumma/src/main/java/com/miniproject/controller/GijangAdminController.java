package com.miniproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.miniproject.model.GijangSaleBoardDTO;
import com.miniproject.model.ProductDetailCommonDTO;
import com.miniproject.model.ProductDetailIndividualDTO;
import com.miniproject.service.GijangSaleBoardService;

@Controller
@RequestMapping("/admin")
public class GijangAdminController {

	@Autowired private GijangSaleBoardService gijangSaleBoardService;
	
	// 상품 추가
	@GetMapping("/productAdd")
	public String productAdd() {
		return "admin/productAdd";
	}
	
	@PostMapping("/productAdd")
	public ModelAndView productAdd(GijangSaleBoardDTO dto) {
		ModelAndView mav = new ModelAndView("/admin/productAdd_msg");
		int row = gijangSaleBoardService.insertProduct(dto);
		mav.addObject("row", row);
		
		return mav;
	}
	

	// 상품 게시글 삭제
	@GetMapping("/deleteProduct/{gijang_SaleBoard_Idx}")
	public String deleteProduct(@PathVariable("gijang_SaleBoard_Idx") int gijang_SaleBoard_Idx) {
		int row = gijangSaleBoardService.deleteProductByIdx(gijang_SaleBoard_Idx);
		System.out.println(row + "행이 삭제되었습니다.");
		return "redirect:/saleBoard/allProducts";
	}
	
	// 상품 게시글 수정
	@GetMapping("/modifyProduct/{gijang_SaleBoard_Idx}")
	public ModelAndView modifyProduct(@PathVariable("gijang_SaleBoard_Idx") int gijang_SaleBoard_Idx) {
		ModelAndView mav = new ModelAndView("/admin/modifyProduct");
		GijangSaleBoardDTO dto = gijangSaleBoardService.selectOneByIdx(gijang_SaleBoard_Idx);
		mav.addObject("dto", dto);
		
		return mav;
	}
	
	@PostMapping("/modifyProduct/{gijang_SaleBoard_Idx}")
	public String modifyProduct(GijangSaleBoardDTO dto) {
		int row = gijangSaleBoardService.modifyProduct(dto);
		System.out.println(row + "행 수정");
		
		return "redirect:/saleBoard/detailProduct/" + dto.getGijang_SaleBoard_Idx();
	}
	
	// 상품 상세 공통내용 추가
	@GetMapping("/detailProductCommonAdd/{gijang_SaleBoard_Idx}")
	public String detailProductAdd() {
		return "/admin/detailProductCommonAdd";
	}
	
	@PostMapping("/detailProductCommonAdd/{gijang_SaleBoard_Idx}")
	public ModelAndView detailProductAdd(@PathVariable("gijang_SaleBoard_Idx") int gijang_SaleBoard_Idx, ProductDetailCommonDTO dto) {
		ModelAndView mav = new ModelAndView("/admin/detailProductCommonAdd_msg");
		int row = gijangSaleBoardService.insertProductDetailCommon(gijang_SaleBoard_Idx, dto);
		mav.addObject("row", row);
		mav.addObject("idx", gijang_SaleBoard_Idx);
		
		return mav;
	}
	
	// 상품 상세 개별내용 추가
	@GetMapping("/detailProductIndiviAdd/{gijang_SaleBoard_Idx}")
	public String detailProductIndiviAdd() {
		return "/admin/detailProductIndiviAdd";
	}
	
	@PostMapping("/detailProductIndiviAdd/{gijang_SaleBoard_Idx}")
	public ModelAndView detailProductIndiviAdd(@PathVariable("gijang_SaleBoard_Idx") int gijang_SaleBoard_Idx, ProductDetailIndividualDTO dto) {
		ModelAndView mav = new ModelAndView("/admin/detailProductIndiviAdd_msg");
		int row = gijangSaleBoardService.insertProductDetailIndividual(gijang_SaleBoard_Idx, dto);
		mav.addObject("row", row);
		mav.addObject("idx", gijang_SaleBoard_Idx);
		
		return mav;
	}
}
