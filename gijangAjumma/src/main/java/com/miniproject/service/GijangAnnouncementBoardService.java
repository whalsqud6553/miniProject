package com.miniproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miniproject.model.GijangAnnouncementBoardDTO;
import com.miniproject.model.PagingVO;
import com.miniproject.repository.GijangAnnouncementBoardDAO;

@Service
public class GijangAnnouncementBoardService {

	@Autowired GijangAnnouncementBoardDAO gijangAnnouncementBoardDAO;

	public List<GijangAnnouncementBoardDTO> selectAnnouncementList() {
		return gijangAnnouncementBoardDAO.selectAnnouncementList();
	}

	public int insertAnnouncementBoard(GijangAnnouncementBoardDTO dto) {
		return gijangAnnouncementBoardDAO.insertAnnouncementBoard(dto);
	}

	public GijangAnnouncementBoardDTO selectById(int gijang_AnnouncementBoard_Idx) {
		return gijangAnnouncementBoardDAO.selectById(gijang_AnnouncementBoard_Idx);
	}

	public int announcementDelete(int gijang_AnnouncementBoard_Idx) {
		return gijangAnnouncementBoardDAO.announcementDelete(gijang_AnnouncementBoard_Idx);
	}

	public int announcementModify(GijangAnnouncementBoardDTO dto) {
		return gijangAnnouncementBoardDAO.announcementModify(dto);
	}

	public int countBoard() {
		return gijangAnnouncementBoardDAO.countBoard();
	}

	public List<GijangAnnouncementBoardDTO> selectAnnouncementListPaging(PagingVO vo) {
		return gijangAnnouncementBoardDAO.selectAnnouncementListPaging(vo);
	}
}
