package com.miniproject.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.miniproject.model.GijangAnnouncementBoardDTO;
import com.miniproject.model.PagingVO;

@Repository
public interface GijangAnnouncementBoardDAO {

	List<GijangAnnouncementBoardDTO> selectAnnouncementList();

	int insertAnnouncementBoard(GijangAnnouncementBoardDTO dto);

	GijangAnnouncementBoardDTO selectById(int gijang_AnnouncementBoard_Idx);

	int announcementDelete(int gijang_AnnouncementBoard_Idx);

	int announcementModify(GijangAnnouncementBoardDTO dto);

	int countBoard();

	List<GijangAnnouncementBoardDTO> selectAnnouncementListPaging(PagingVO vo);

}
