<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const row = '${row}';
	if(row != '0') {
		alert('게시글이 삭제 되었습니다.');
		location.href = '${cpath}/QnA/QnAList';
	}
	else {
		alert('게시글 삭제에 실패하였습니다.');
		location.href = '${cpath}/QnA/QnAList';
	}
</script>

</body>
</html>