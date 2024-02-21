<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const user = '${user}';
	if(user == '') {
		alert('로그인을 해주세요.')
		location.href = '${cpath}/member/login';
	}
</script>

<div class="frame">
	<div class="mypageForm">
		<ul class="mypageMenu">
			<li><a href="${cpath }/member/myInformationModify_pwCheck">내 정보 수정</a></li>
			<li><a href="${cpath }/member/myOrderList">주문 내역</a></li>
			<li><a href="${cpath }/member/myWishList">찜목록</a></li>
			<li><button id="deleteMember">회원 탈퇴</button></li>
		</ul>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

<script>
	$('#deleteMember').on('click', function() {
		const userIdx = '${user.gijang_Member_Idx}';
		let flag = confirm('정말 탈퇴 하시겠습니까?');
		if(flag) {
			location.href = '${cpath}/member/deletemMember/' + userIdx;
		}
	})
</script>

</body>
</html>