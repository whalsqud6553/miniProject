<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="frame">
	<div class="reviewOneBtn flex">
		<div class="reviewOneDelModiBtn">
			<c:if test="${dto.gijang_ReviewBoard_Writer == user.gijang_Member_UserId }">
				<button id="reviewOneDeleteBtn">삭제</button>
				<button id="reviewOneModifyBtn">수정</button>
			</c:if>
		</div>
		<div class="reviewOneListBtn">
			<a href="${cpath }/review/reviewList">리뷰 전체 목록으로</a>
		</div>
	</div>
	<div class="reviewOneTitle">
		<h2>${dto.gijang_ReviewBoard_Title }</h2>
		<p>${dto.gijang_ReviewBoard_Writer }</p>
		<p>${dto.gijang_ReviewBoard_Wdate }</p>
	</div>
	<c:if test="${not empty dto.gijang_ReviewBoard_FileName }">
		<div class="reviewOneImg">
			<img src="${cpath }/upload/${dto.gijang_ReviewBoard_FileName}">
		</div>
	</c:if>
	<div class="reviewOneContent">
		<p>${dto.gijang_ReviewBoard_Content }</p>
	</div>
	<div class="reviewOneComment">
		<h2>댓글</h2>
		<c:if test="${empty comment }">
			<p style="text-align: center; padding: 20px 0;">작성된 댓글이 존재하지 않습니다.</p>
		</c:if>
		<c:forEach var="comment" items="${comment }">
			<div class="commentArea">
				<div class="commentArea_content">
					<h4>${comment.gijang_ReviewComment_Writer }</h4>
					<p>${comment.gijang_ReviewComment_Content }</p>
					<p>${comment.gijang_ReviewComment_Wdate }</p>
				</div>
			</div>
		</c:forEach>
		<div class="commentBox">
			<c:if test="${user.gijang_Member_IsAdmin == 'Y' }">
			<form method="POST">
				<textarea name="gijang_ReviewComment_Content" placeholder="댓글을 입력하세요" required></textarea>
				<button type="submit" id="commentBtn">작성</button>
			</form>
			</c:if>
		</div>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

<script>
	const commentArea = document.querySelectorAll('.commentArea');
	if(commentArea.length != 0) {
		commentArea[commentArea.length - 1].style.borderBottom = 'none';
	}
	
	$('#reviewOneDeleteBtn').on('click', function() {
		let flag = confirm('정말 삭제하시겠습니까?');
		if(flag) {
			location.href = '${cpath}/review/reviewOneDelete/' + ${dto.gijang_ReviewBoard_Idx}; 
		}
	})
	
	$('#reviewOneModifyBtn').on('click', function() {
		let flag = confirm('정말 수정하시겠습니까?');
		if(flag) {
			location.href = '${cpath}/review/reviewOneModify/' + ${dto.gijang_ReviewBoard_Idx};
		}
	})
</script>

</body>
</html>