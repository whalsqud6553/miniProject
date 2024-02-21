package com.miniproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miniproject.component.FileComponent;
import com.miniproject.model.GijangMemberDTO;
import com.miniproject.model.GijangReviewBoardDTO;
import com.miniproject.model.GijangReviewCommentDTO;
import com.miniproject.model.GijangSaleBoardDTO;
import com.miniproject.model.PagingVO;
import com.miniproject.repository.GijangReviewBoardDAO;

@Service
public class GijangReviewBoardService {

	@Autowired private GijangReviewBoardDAO gijangReviewBoardDAO;
	@Autowired private FileComponent fileComponent;

	public GijangSaleBoardDTO selectSaleBoardJoinOrder(int gijang_OrderList_Idx) {
		return gijangReviewBoardDAO.selectSaleBoardJoinOrder(gijang_OrderList_Idx);
	}

	public int insertReview(GijangReviewBoardDTO dto) {
		String fileName = fileComponent.getFileName(dto.getMpfile());
		dto.setGijang_ReviewBoard_FileName(fileName);
		return gijangReviewBoardDAO.insertReview(dto);
	}

	public List<GijangReviewBoardDTO> selectOrderListJoinReviewBoard(PagingVO vo) {
		return gijangReviewBoardDAO.selectOrderListJoinReviewBoard(vo);
	}

	public GijangReviewBoardDTO selectOneByIdx(int gijang_ReviewBoard_Idx) {
		return gijangReviewBoardDAO.selectOneByIdx(gijang_ReviewBoard_Idx);
	}

	public int countBoard() {
		return gijangReviewBoardDAO.countBoard();
	}

	public int productNameSearchCountBoard(String keyword) {
		return gijangReviewBoardDAO.productNameSearchCountBoard(keyword);
	}

	public int writerSearchCountBoard(String keyword) {
		return gijangReviewBoardDAO.writerSearchCountBoard(keyword);
	}

	public List<GijangReviewBoardDTO> productSearchList(PagingVO vo) {
		return gijangReviewBoardDAO.productSearchList(vo);
	}

	public List<GijangReviewBoardDTO> writerSearchList(PagingVO vo) {
		return gijangReviewBoardDAO.writerSearchList(vo);
	}

	public int insertReviewComment(int gijang_ReviewBoard_Idx, GijangReviewCommentDTO dto, GijangMemberDTO user) {
		dto.setGijang_ReviewComment_ReviewBoardIdx(gijang_ReviewBoard_Idx);
		dto.setGijang_ReviewComment_Writer(user.getGijang_Member_UserId());
		
		return gijangReviewBoardDAO.insertReviewComment(dto);
	}

	public List<GijangReviewCommentDTO> selectReviewCommentList(int gijang_ReviewBoard_Idx) {
		return gijangReviewBoardDAO.selectReviewCommentList(gijang_ReviewBoard_Idx);
	}

	public int reviewOneDelete(int gijang_ReviewBoard_Idx, GijangReviewBoardDTO dto) {
		if(dto.getGijang_ReviewBoard_FileName() != null) {
			fileComponent.deleteFile(dto.getGijang_ReviewBoard_FileName());
		}
		return gijangReviewBoardDAO.reviewOneDelete(gijang_ReviewBoard_Idx);
	}

	public int reviewOneModify(GijangReviewBoardDTO dto) {
		String fileName = fileComponent.getFileName(dto.getMpfile());
		dto.setGijang_ReviewBoard_FileName(fileName);
		return gijangReviewBoardDAO.reviewOneModify(dto);
	}
}
