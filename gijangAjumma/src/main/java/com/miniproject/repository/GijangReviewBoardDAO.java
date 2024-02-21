package com.miniproject.repository;

import java.util.List;

import com.miniproject.model.GijangReviewBoardDTO;
import com.miniproject.model.GijangReviewCommentDTO;
import com.miniproject.model.GijangSaleBoardDTO;
import com.miniproject.model.PagingVO;

public interface GijangReviewBoardDAO {

	GijangSaleBoardDTO selectSaleBoardJoinOrder(int gijang_OrderList_Idx);

	int insertReview(GijangReviewBoardDTO dto);

	List<GijangReviewBoardDTO> selectOrderListJoinReviewBoard(PagingVO vo);

	GijangReviewBoardDTO selectOneByIdx(int gijang_ReviewBoard_Idx);

	int countBoard();

	int productNameSearchCountBoard(String keyword);

	int writerSearchCountBoard(String keyword);

	List<GijangReviewBoardDTO> productSearchList(PagingVO vo);

	List<GijangReviewBoardDTO> writerSearchList(PagingVO vo);

	int insertReviewComment(GijangReviewCommentDTO dto);

	List<GijangReviewCommentDTO> selectReviewCommentList(int gijang_ReviewBoard_Idx);

	int reviewOneDelete(int gijang_ReviewBoard_Idx);

	int reviewOneModify(GijangReviewBoardDTO dto);
}
