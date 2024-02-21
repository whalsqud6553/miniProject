<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div id="announcementList">
	<div class="frame">
		<div class="board_header">
			<h2>공지사항</h2>
		</div>
		<div class="board_titles flex">
			<p>글 번호</p>
			<p>제목</p>
			<p>작성자</p>
			<p>작성일</p>
		</div>
		<c:if test="${empty announcementList }">
			<h3 style="text-align: center;">게시글이 존재하지 않습니다.</h3>
		</c:if>
		<c:forEach var="announcementList" items="${announcementList }">
			<div class="board_contents flex">
					<p>${announcementList.gijang_AnnouncementBoard_Idx }</p>
					<p>
						<a href="${cpath }/announcementBoard/announcementViewOne/${announcementList.gijang_AnnouncementBoard_Idx}">
							${announcementList.gijang_AnnouncementBoard_Title }
						</a>
					</p>
					<p>${announcementList.gijang_AnnouncementBoard_Writer }</p>
					<p>${announcementList.gijang_AnnouncementBoard_Wdate }</p>
			</div>
		</c:forEach>
		<c:if test="${user.gijang_Member_IsAdmin == 'Y' }">
			<div class="board_btn">
				<a href="${cpath }/announcementBoard/announcementWrite"><button id="announcementWriteBtn">글쓰기</button></a>
			</div>
		</c:if>
		<div class="pagingForm">
			<c:if test="${paging.startPage != 1 }">
				<a href="${cpath }/announcementBoard/announcementList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
			</c:if>
			<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="${cpath }/announcementBoard/announcementList?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
			</c:forEach>
			<c:if test="${paging.endPage != paging.lastPage}">
				<a href="${cpath }/announcementBoard/announcementList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
			</c:if>
		</div>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

</body>
</html>