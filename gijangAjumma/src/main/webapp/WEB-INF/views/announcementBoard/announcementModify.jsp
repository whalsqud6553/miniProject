<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:if test="${user.gijang_Member_IsAdmin != 'Y' }">
	<script>
		alert('잘못된 접근입니다.')
		location.href = '${cpath}'
	</script>
</c:if>

<div id="QnAWrite">
	<div class="frame">
		<div class="QnAWrite_form">
			<form method="POST">
				<p><input type="text" name="gijang_AnnouncementBoard_Title" value="${dto.gijang_AnnouncementBoard_Title }" required autofocus></p>
				<p>
					<textarea name="gijang_AnnouncementBoard_Content" required autofocus>${dto.gijang_AnnouncementBoard_Content }</textarea>
				</p>
				<p><input type="submit" value="작성"></p>
			</form>
		</div>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

</body>
</html>