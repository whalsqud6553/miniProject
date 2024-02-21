package com.miniproject.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.miniproject.model.GijangMemberDTO;
import com.miniproject.model.GijangSaleBoardDTO;
import com.miniproject.model.GijangWishListDTO;

@Repository
public interface GijangMemberDAO {

	GijangMemberDTO selectOneById(String textUserId);

	int joinMember(GijangMemberDTO dto);

	int deleteMember(int gijang_Member_Idx);

	int insertWishList(GijangWishListDTO dto);

	GijangWishListDTO selectWishListDuplicationCheck(GijangWishListDTO dto);

	List<GijangSaleBoardDTO> selectWishList(String userId);

	int deleteWishList(int gijang_SaleBoard_Idx);

	int updateMember(GijangMemberDTO dto);

	int updatePassword(GijangMemberDTO dto);

}
