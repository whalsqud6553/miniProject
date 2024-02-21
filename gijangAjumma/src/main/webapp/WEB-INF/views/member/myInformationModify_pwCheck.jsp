<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const user = '${user}';
	if(user == '') {
		alert('로그인을 해주세요');
		location.href = '${cpath}/member/login';
	}
</script>

<div class="frame">
	<div class="pwCheckForm">
		<h2 style="text-align: center;">비밀번호 확인</h2>
		<form method="POST">
			<input type="password" name="gijang_Member_UserPw" placeholder="비밀번호를 입력해주세요" required autofocus">
			<input type="submit" value="확인">
		</form>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

</body>
</html>