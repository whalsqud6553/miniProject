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
import com.miniproject.model.GijangQnABoardDTO;
import com.miniproject.model.GijangQnACommentDTO;
import com.miniproject.model.PagingVO;
import com.miniproject.service.GijangQnABoardService;

@Controller
@RequestMapping("/QnA")
public class GijangQnABoardController {

	@Autowired private GijangQnABoardService gijangQnABoardService;
	
	@GetMapping("/QnAList")
	public String qnaList(PagingVO vo, Model model, 
						@RequestParam(value="nowPage", required=false) String nowPage, 
						@RequestParam(value="cntPerPage", required=false) String cntPerPage,
						@RequestParam(value = "type", required = false) String type, 
						@RequestParam(value = "keyword", required = false) String keyword) {
		
		// 검색어가 null 이라면 전체 리스트를 출력
		if(type == null && keyword == null) {
			
			int total = gijangQnABoardService.countBoard();
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
			// 페이징 sql문 게시글 조회
			List<GijangQnABoardDTO> list = gijangQnABoardService.selectQnAListPaging(vo);
			model.addAttribute("qnaList", list);
		}
		// 검색어가 null이 아니라면 해당 조건에 맞는 리스트 출력
		else {
			if(type.equals("title")) {
				int total = gijangQnABoardService.titleSearchCount(keyword);
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
				model.addAttribute("titlePaging", vo);
				
				List<GijangQnABoardDTO> titleSearchList = gijangQnABoardService.titleSearchList(vo);
				model.addAttribute("titleSearchList", titleSearchList);
			}
			if(type.equals("writer")) {
				int total = gijangQnABoardService.writerSearchCount(keyword);
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
				
				List<GijangQnABoardDTO> writerSearchList = gijangQnABoardService.writerSearchList(vo);
				model.addAttribute("writerSearchList", writerSearchList);
			}
		}
		
		return "/QnA/QnAList";
	}
	
	@GetMapping("/QnAWrite")
	public String qnaWrite() {
		return "/QnA/QnAWrite";
	}
	
	@PostMapping("/QnAWrite")
	public String qnaWrite(GijangQnABoardDTO dto, HttpSession session) {
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		if(user != null) {
			String userId = user.getGijang_Member_UserId();
			dto.setGijang_QnABoard_Writer(userId);
		}
		int row = gijangQnABoardService.insertQnA(dto);
		System.out.println(row + "행 추가");
		return "redirect:/QnA/QnAList";
	}
	@PostMapping("/QnAViewOne/{gijang_QnABoard_Idx}")
	public String insertComment(@PathVariable("gijang_QnABoard_Idx") int gijang_QnABoard_Idx, GijangQnACommentDTO dto
			, HttpSession session) {
		GijangMemberDTO user = (GijangMemberDTO) session.getAttribute("user");
		if(user != null) {
			dto.setGijang_QnAComment_Writer(user.getGijang_Member_UserId());
			int row = gijangQnABoardService.insertComment(dto, gijang_QnABoard_Idx);
			if(row != 0) {
				gijangQnABoardService.updateIsAnswer(gijang_QnABoard_Idx);
			}
		}
		
		return "redirect:/QnA/QnAViewOne/" + gijang_QnABoard_Idx;
	}
	
	@GetMapping("/QnAViewOne/{gijang_QnABoard_Idx}")
	public ModelAndView qnaViewOne(@PathVariable("gijang_QnABoard_Idx") int gijang_QnABoard_Idx) {
		ModelAndView mav = new ModelAndView("/QnA/QnAViewOne");
		GijangQnABoardDTO dto = gijangQnABoardService.selectQnAOneByIdx(gijang_QnABoard_Idx);
		mav.addObject("dto", dto);
		List<GijangQnACommentDTO> comment = gijangQnABoardService.selectComment(gijang_QnABoard_Idx);
		mav.addObject("comment", comment);
		
		return mav;
	}
}
