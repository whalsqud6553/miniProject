<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const row = '${row}';
	const idx = '${idx}';
	
	if(row == 1) {
		alert('상품개별 내용 등록 성공');
		location.href = '${cpath}/saleBoard/detailProduct/' + idx;
	}
	else {
		alert('등록 실패');
		location.href = '${cpath}/saleBoard/detailProduct/' + idx;
	}
</script>

</body>
</html>