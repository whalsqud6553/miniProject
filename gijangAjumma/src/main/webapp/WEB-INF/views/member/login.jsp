<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div id="login_form" class="frame">
	<h1>로그인</h1>
	<div class="login_box">
		<form method="POST">
			<p><input type="text" name="gijang_Member_UserId" placeholder="아이디" autofocus required></p>
			<p><input type="password" name="gijang_Member_Userpw" placeholder="비밀번호" required></p>
			<p><input type="submit" value="로그인"></p>
		</form>
		<p><a href="${cpath }/member/join">아직 회원이 아니십니까 ? 회원가입</a></p>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

</body>
</html>