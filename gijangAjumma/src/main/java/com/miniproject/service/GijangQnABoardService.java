package com.miniproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miniproject.model.GijangQnABoardDTO;
import com.miniproject.model.GijangQnACommentDTO;
import com.miniproject.model.PagingVO;
import com.miniproject.repository.GijangQnABoardDAO;

@Service
public class GijangQnABoardService {
	
	@Autowired GijangQnABoardDAO gijangQnABoardDAO;

	public int insertQnA(GijangQnABoardDTO dto) {
		return gijangQnABoardDAO.insertQnA(dto);
	}

	public List<GijangQnABoardDTO> selectQnAList() {
		return gijangQnABoardDAO.selectQnAList();
	}

	public GijangQnABoardDTO selectQnAOneByIdx(int gijang_QnABoard_Idx) {
		return gijangQnABoardDAO.selectQnAOneByIdx(gijang_QnABoard_Idx);
	}

	public int insertComment(GijangQnACommentDTO dto, int gijang_QnABoard_Idx) {
		dto.setGijang_QnAComment_QnABoardIdx(gijang_QnABoard_Idx);
		return gijangQnABoardDAO.insertComment(dto);
	}

	public List<GijangQnACommentDTO> selectComment(int gijang_QnABoard_Idx) {
		return gijangQnABoardDAO.selectComment(gijang_QnABoard_Idx);
	}

	public void updateIsAnswer(int gijang_QnABoard_Idx) {
		gijangQnABoardDAO.updateIsAnswer(gijang_QnABoard_Idx);
	}

	public int countBoard() {
		return gijangQnABoardDAO.countBoard();
	}

	public List<GijangQnABoardDTO> selectQnAListPaging(PagingVO vo) {
		return gijangQnABoardDAO.selectQnaListPaging(vo);
	}

	public int titleSearchCount(String keyword) {
		return gijangQnABoardDAO.titleSearchCount(keyword);
	}

	public int writerSearchCount(String keyword) {
		return gijangQnABoardDAO.writerSearchCount(keyword);
	}

	public List<GijangQnABoardDTO> titleSearchList(PagingVO vo) {
		return gijangQnABoardDAO.titleSearchList(vo);
	}

	public List<GijangQnABoardDTO> writerSearchList(PagingVO vo) {
		return gijangQnABoardDAO.writerSearchList(vo);
	}
}
