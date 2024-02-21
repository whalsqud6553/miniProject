<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="frame">
	<div class="announcementBtn flex">
		<c:if test="${user.gijang_Member_IsAdmin == 'Y' }">
			<button id="announcementModifyBtn">수정하기</button>
			<button id="announcementDeleteBtn">삭제하기</button>
		</c:if>
		<a href="${cpath }/announcementBoard/announcementList">
			<button>전체 공지사항 보기</button>
		</a>
	</div>
	<div class="announcementTitle">
		<h2>${dto.gijang_AnnouncementBoard_Title }</h2>
		<p>${dto.gijang_AnnouncementBoard_Wdate }</p>
	</div>
	<div class="announcementContent">
		<p>${dto.gijang_AnnouncementBoard_Content }</p>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

<script>
	const announcementDeleteBtn = document.getElementById('announcementDeleteBtn');
	const announcementModifyBtn = document.getElementById('announcementModifyBtn');
	
	announcementDeleteBtn.onclick = function() {
		var flag = confirm('정말 삭제 하시겠습니까?')
		if(flag) {
			location.href = '${cpath}/announcementBoard/announcementDelete/' + idx;
		}
	}
	
	const idx = '${dto.gijang_AnnouncementBoard_Idx}';
	
	announcementModifyBtn.onclick = function() {
		var flag = confirm('정말 수정 하시겠습니까?')
		if(flag) {
			location.href = '${cpath}/announcementBoard/announcementModify/' + idx;
		}
	}
</script>

</body>
</html>