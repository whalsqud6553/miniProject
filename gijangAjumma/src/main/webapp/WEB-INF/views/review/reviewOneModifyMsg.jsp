<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const row = '${row}';
	const idx = '${dto.gijang_ReviewBoard_Idx}';
	if(row != '0') {
		alert('게시글이 수정 되었습니다.');
		location.href = '${cpath}/review/reviewOne/' + idx; 
	}
	else {
		alert('게시글 수정에 실패하였습니다.');
		location.href = '${cpath}/review/reviewList';
	}
</script>

</body>
</html>