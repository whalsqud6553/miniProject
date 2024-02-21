<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const row = '${row}';
	if(row != '0') {
		alert('비밀번호 변경 성공. 다시 로그인을 해주세요');
		location.href = '${cpath}/member/logout';
	}
	else {
		alert('비밀번호 변경 실패')
		location.href = '${cpath}';
	}
</script>

</body>
</html>