<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const row = '${row}'
	if(row == '1') {
		alert('회원 가입 성공. 로그인을 해주세요');
		location.href = '${cpath}/member/login';
	}
	else {
		alert('알수없는 이유로 회원가입에 실패했습니다. 다시 시도 해주세요');
		location.href = '${cpath}';
	}
</script>

</body>
</html>