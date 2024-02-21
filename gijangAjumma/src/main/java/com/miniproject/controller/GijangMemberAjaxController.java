package com.miniproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.miniproject.model.GijangMemberDTO;
import com.miniproject.service.GijangMemberService;

@RestController
@RequestMapping("/member")
public class GijangMemberAjaxController {

	@Autowired private GijangMemberService gijangMemberService;
	
	@GetMapping("/duplicationCheck")
	public GijangMemberDTO getSelectUserId(String textUserId) {
		GijangMemberDTO dto = gijangMemberService.selectOneById(textUserId);
		return dto;
	}
	
}
