<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	const row = '${row}';
	if(row == '1') {
		alert('수정완료');
		location.href = '${cpath}';
	}
	else {
		alert('알 수 없는 오류 발생');
		location.href = '${cpath}';
	}
</script>

</body>
</html>