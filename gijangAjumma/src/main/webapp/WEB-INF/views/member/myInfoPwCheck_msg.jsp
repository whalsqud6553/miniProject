<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	let row = '${row}';
	if(row == '1') {
		location.href = '${cpath}/member/myInformationModify';
	}
	else {
		alert('비밀번호가 틀립니다');
		location.href = '${cpath}/member/myInformationModify_pwCheck';
	}
</script>

</body>
</html>