package com.miniproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miniproject.component.HashComponent;
import com.miniproject.model.GijangMemberDTO;
import com.miniproject.model.GijangSaleBoardDTO;
import com.miniproject.model.GijangWishListDTO;
import com.miniproject.repository.GijangMemberDAO;

@Service
public class GijangMemberService {

	@Autowired
	private GijangMemberDAO gijangMemberDAO;
	@Autowired
	private HashComponent hashComponent;
	
	
	public GijangMemberDTO selectOneById(String textUserId) {
		return gijangMemberDAO.selectOneById(textUserId);
	}

	public int joinMember(GijangMemberDTO dto) {
		int row = 0;
		
		String salt = hashComponent.getSalt();
		String userpw = dto.getGijang_Member_Userpw();
		
		String hashpw = hashComponent.getHash(userpw, salt);
		
		dto.setGijang_Member_Salt(salt);
		dto.setGijang_Member_Userpw(hashpw);
		row = gijangMemberDAO.joinMember(dto);
		return row;
	}

	public GijangMemberDTO loginMember(GijangMemberDTO dto) {
		// 입력한 아이디로 찾기
		GijangMemberDTO login = gijangMemberDAO.selectOneById(dto.getGijang_Member_UserId());
		if(login != null) {
			String userpw = hashComponent.getHash(dto.getGijang_Member_Userpw(), login.getGijang_Member_Salt());
			if(userpw.equals(login.getGijang_Member_Userpw())) {
				return login;
			}
		}
		
		return null;
	}

	public int deleteMember(int gijang_Member_Idx) {
		return gijangMemberDAO.deleteMember(gijang_Member_Idx);
	}

	public int insertWishList(GijangWishListDTO dto) {
		return gijangMemberDAO.insertWishList(dto);
	}

	public GijangWishListDTO selectWishListDuplicationCheck(GijangWishListDTO dto) {
		return gijangMemberDAO.selectWishListDuplicationCheck(dto);
	}

	public List<GijangSaleBoardDTO> selectWishList(String userId) {
		return gijangMemberDAO.selectWishList(userId);
	}

	public int deleteWishListByIdx(int gijang_SaleBoard_Idx) {
		return gijangMemberDAO.deleteWishList(gijang_SaleBoard_Idx);
	}

	public int myInformationModifyPwCheck(String gijang_Member_UserPw, GijangMemberDTO user) {
		if(user != null) {
			String userpw = hashComponent.getHash(gijang_Member_UserPw, user.getGijang_Member_Salt());
			if(user.getGijang_Member_Userpw().equals(userpw)) {
				return 1;
			}
		}
		
		return 0;
	}

	public int updateMember(GijangMemberDTO dto) {
		return gijangMemberDAO.updateMember(dto);
	}

	public int updatePassword(GijangMemberDTO user, String password) {
		if(user != null) {
			String pw = hashComponent.getHash(password, user.getGijang_Member_Salt());
			GijangMemberDTO dto = new GijangMemberDTO();
			dto.setGijang_Member_UserId(user.getGijang_Member_UserId());
			dto.setGijang_Member_Userpw(pw);
			
			return gijangMemberDAO.updatePassword(dto);
		}
		
		return 0;
	}

}
