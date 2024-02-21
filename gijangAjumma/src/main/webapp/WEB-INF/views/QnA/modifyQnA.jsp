<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const user = '${user}';
	if(user == '') {
		alert('로그인을 해주세요');
		location.href = '${cpath}/member/login';
	}
	else if('${dto.gijang_QnABoard_Writer}' != '${user.gijang_Member_UserId}') {
		alert('본인만 수정 가능합니다.');
		location.href = '${cpath}';
	}
</script>

<div id="QnAWrite">
	<div class="frame">
		<div class="QnAWrite_form">
			<form method="POST">
				<p><input type="text" value="${dto.gijang_QnABoard_Title }" name="gijang_QnABoard_Title" placeholder="제목을 입력하세요" required autofocus></p>
				<p><textarea name="gijang_QnABoard_Content" placeholder="내용을 입력하세요" maxlength="1000" required autofocus>${dto.gijang_QnABoard_Content }</textarea></p>
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