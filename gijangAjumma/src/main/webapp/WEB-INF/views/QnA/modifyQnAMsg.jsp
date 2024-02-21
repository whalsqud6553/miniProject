<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const row = '${row}';
	if(row != '0') {
		alert('게시글이 수정 되었습니다.')
		location.href = '${cpath}/QnA/QnAViewOne/' + '${dto.gijang_QnABoard_Idx}';
	}
	else {
		alert('게시글 수정에 실패하였습니다.');
		location.href = '${cpath}/QnA/QnAViewOne/' + '${dto.gijang_QnABoard_Idx}';
	}
</script>

</body>
</html>