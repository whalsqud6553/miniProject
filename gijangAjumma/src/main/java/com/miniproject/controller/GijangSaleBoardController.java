package com.miniproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.miniproject.model.GijangSaleBoardDTO;
import com.miniproject.model.ProductDetailCommonDTO;
import com.miniproject.model.ProductDetailIndividualDTO;
import com.miniproject.service.GijangSaleBoardService;

@Controller
@RequestMapping("/saleBoard")
public class GijangSaleBoardController {

	@Autowired private GijangSaleBoardService gijangSaleBoardService;
	
	// 상품 전체 리스트 반환
	@GetMapping("/allProducts")
	public ModelAndView allProductList() {
		ModelAndView mav = new ModelAndView("/saleBoard/allProducts");
		List<GijangSaleBoardDTO> list = gijangSaleBoardService.selectAllList();
		mav.addObject("list", list);
		return mav;
	}
	
	@GetMapping("/banchanFish")
	public ModelAndView banchanFishList() {
		ModelAndView mav = new ModelAndView();
		List<GijangSaleBoardDTO> list = gijangSaleBoardService.banchanFishList();
		mav.addObject("list", list);
		
		return mav;
	}
	
	@GetMapping("/jeasuyongFish")
	public ModelAndView jeasuyongFishList() {
		ModelAndView mav = new ModelAndView();
		List<GijangSaleBoardDTO> list = gijangSaleBoardService.jeasuyongFishList();
		mav.addObject("list", list);
		
		return mav;
	}
	
	@GetMapping("/jeasuyongSeeFood")
	public ModelAndView jeasuyongSeeFoodList() {
		ModelAndView mav = new ModelAndView();
		List<GijangSaleBoardDTO> list = gijangSaleBoardService.jeasuyongSeeFoodList();
		mav.addObject("list", list);
		
		return mav;
	}
	
	// 상품 상세 페이지
	@GetMapping("/detailProduct/{gijang_SaleBoard_Idx}")
	public ModelAndView datailProduct(@PathVariable("gijang_SaleBoard_Idx") int gijang_SaleBoard_Idx) {
		ModelAndView mav = new ModelAndView("/saleBoard/detailProduct");
		GijangSaleBoardDTO dto = gijangSaleBoardService.selectOneByIdx(gijang_SaleBoard_Idx);
		ProductDetailCommonDTO detail = gijangSaleBoardService.selectOneDetailCommon(gijang_SaleBoard_Idx);
		ProductDetailIndividualDTO individual = gijangSaleBoardService.selectOneDetailIndividual(gijang_SaleBoard_Idx);
		mav.addObject("dto", dto);
		mav.addObject("detail", detail);
		mav.addObject("individual", individual);
		return mav;
	}
	
	
}
