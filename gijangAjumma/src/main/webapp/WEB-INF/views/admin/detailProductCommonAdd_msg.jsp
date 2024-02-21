<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const row = '${row}';
	const idx = '${idx}';
	
	if(row != 1) {
		alert('등록 실패');
		location.href = '${cpath}/saleBoard/detailProduct/' + idx;
	}
	else {
		alert('성공적으로 등록 되었습니다.');
		location.href = '${cpath}/saleBoard/detailProduct/' + idx;
	}
</script>

</body>
</html>