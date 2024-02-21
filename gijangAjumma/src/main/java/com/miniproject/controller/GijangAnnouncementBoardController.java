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

import com.miniproject.model.GijangAnnouncementBoardDTO;
import com.miniproject.model.GijangMemberDTO;
import com.miniproject.model.PagingVO;
import com.miniproject.service.GijangAnnouncementBoardService;

@Controller
@RequestMapping("/announcementBoard")
public class GijangAnnouncementBoardController {

	@Autowired private GijangAnnouncementBoardService gijangAnnouncementBoardService;
	
	@GetMapping("/announcementList")
	public String announcementList(PagingVO vo, Model model,
								@RequestParam(value = "nowPage", required = false) String nowPage,
								@RequestParam(value = "cntPerPage", required = false) String cntPerPage) {
		
		int total = gijangAnnouncementBoardService.countBoard();
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
		
		List<GijangAnnouncementBoardDTO> list = gijangAnnouncementBoardService.selectAnnouncementListPaging(vo);
		model.addAttribute("announcementList", list);
		
		return "/announcementBoard/announcementList";
	}
	
	@GetMapping("/announcementWrite")
	public String announcementBoardWrite() {
		return "announcementBoard/announcementWrite";
	}
	
	@PostMapping("/announcementWrite")
	public String announcementBoardWrite(GijangAnnouncementBoardDTO dto, HttpSession session) {
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		if(user != null) {
			dto.setGijang_AnnouncementBoard_Writer(user.getGijang_Member_UserId());
		}
		int row = gijangAnnouncementBoardService.insertAnnouncementBoard(dto);
		System.out.println(row + "행 추가");
		return "redirect:/announcementBoard/announcementList";
	}
	
	@GetMapping("/announcementViewOne/{gijang_AnnouncementBoard_Idx}")
	public ModelAndView announcementBoardViewOne(@PathVariable("gijang_AnnouncementBoard_Idx") int gijang_AnnouncementBoard_Idx) {
		ModelAndView mav = new ModelAndView("/announcementBoard/announcementViewOne");
		GijangAnnouncementBoardDTO dto = gijangAnnouncementBoardService.selectById(gijang_AnnouncementBoard_Idx);
		mav.addObject("dto", dto);
		
		return mav;
	}
	
	@GetMapping("/announcementDelete/{gijang_AnnouncementBoard_Idx}")
	public String announcementDelete(@PathVariable("gijang_AnnouncementBoard_Idx") int gijang_AnnouncementBoard_Idx) {
		int row = gijangAnnouncementBoardService.announcementDelete(gijang_AnnouncementBoard_Idx);
		System.out.println(row + "행 삭제");
		return "redirect:/announcementBoard/announcementList";
	}
	
	@GetMapping("/announcementModify/{gijang_AnnouncementBoard_Idx}")
	public ModelAndView announcementModifyPage(@PathVariable("gijang_AnnouncementBoard_Idx") int gijang_AnnouncementBoard_Idx) {
		ModelAndView mav = new ModelAndView("/announcementBoard/announcementModify");
		GijangAnnouncementBoardDTO dto = gijangAnnouncementBoardService.selectById(gijang_AnnouncementBoard_Idx);
		mav.addObject("dto", dto);
		
		return mav;
	}
	
	@PostMapping("/announcementModify/{gijang_AnnouncementBoard_Idx}")
	public String announcementModify(GijangAnnouncementBoardDTO dto) {
		int row = gijangAnnouncementBoardService.announcementModify(dto);
		System.out.println(row + "행 수정");
		
		return "redirect:/announcementBoard/announcementViewOne/" + dto.getGijang_AnnouncementBoard_Idx();
	}
}
