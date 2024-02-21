<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:if test="${user.gijang_Member_IsAdmin != 'Y' and user.gijang_Member_UserId != dto.gijang_QnABoard_Writer }">
	<script>
		alert('본인만 열람 할 수 있습니다.');
		location.href= '${cpath}/QnA/QnAList';
	</script>
</c:if>

<div class="frame">
	<div class="QnABtn">
		<a href="${cpath }/QnA/QnAList">Q&A 전체 목록으로</a>
	</div>
	<div class="QnATitle">
		<h2>${dto.gijang_QnABoard_Title }</h2>
		<p>${dto.gijang_QnABoard_Wdate }</p>
	</div>
	<div class="QnAContent">
		<p>${dto.gijang_QnABoard_Content }</p>
	</div>
	<div class="QnAComment">
		<h2>댓글</h2>
		<c:if test="${empty comment }">
			<p style="text-align: center; padding: 20px 0;">작성된 댓글이 존재하지 않습니다.</p>
		</c:if>
		<c:forEach var="comment" items="${comment }">
			<div class="commentArea">
				<div class="commentArea_content">
					<h4>${comment.gijang_QnAComment_Writer }</h4>
					<p>${comment.gijang_QnAComment_Content }</p>
					<p>${comment.gijang_QnAComment_Wdate }</p>
				</div>
			</div>
		</c:forEach>
		<div class="commentBox">
			<c:if test="${user.gijang_Member_IsAdmin == 'Y' }">
			<form method="POST">
				<textarea name="gijang_QnAComment_Content" placeholder="댓글을 입력하세요" required></textarea>
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
	commentArea[commentArea.length - 1].style.borderBottom = 'none';
</script>

</body>
</html>