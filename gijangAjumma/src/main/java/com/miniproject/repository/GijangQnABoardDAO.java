package com.miniproject.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.miniproject.model.GijangQnABoardDTO;
import com.miniproject.model.GijangQnACommentDTO;
import com.miniproject.model.PagingVO;

@Repository
public interface GijangQnABoardDAO {

	int insertQnA(GijangQnABoardDTO dto);

	List<GijangQnABoardDTO> selectQnAList();

	GijangQnABoardDTO selectQnAOneByIdx(int gijang_QnABoard_Idx);

	int insertComment(GijangQnACommentDTO dto);

	List<GijangQnACommentDTO> selectComment(int gijang_QnABoard_Idx);

	void updateIsAnswer(int gijang_QnABoard_Idx);

	int countBoard();

	List<GijangQnABoardDTO> selectQnaListPaging(PagingVO vo);

	int titleSearchCount(String keyword);

	int writerSearchCount(String keyword);

	List<GijangQnABoardDTO> titleSearchList(PagingVO vo);

	List<GijangQnABoardDTO> writerSearchList(PagingVO vo);
}
