<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const row = '${row}'
	if(row == '1') {
		alert('글 등록이 완료되었습니다.')
		location.href = '${cpath}/saleBoard/allProducts'
	}
	else {
		alert('글 등록 실패')
		location.href = '${cpath}/saleBoard/allProducts';
	}
</script>

</body>
</html>