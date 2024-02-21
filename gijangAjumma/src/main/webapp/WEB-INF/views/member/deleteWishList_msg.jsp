<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const row = '${row}';
	if(row != '0') {
		alert('삭제되었습니다.')
		location.href = '${cpath}/member/myWishList';
	}
	else {
		alert('알 수 없는 오류')
		location.href = '${cpath}/member/myWishList';
	}
</script>

</body>
</html>