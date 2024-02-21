<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const writer = '${dto.gijang_ReviewBoard_Writer}';
	const user = '${user}';
	
	if(user == '') {
		alert('로그인 후 이용 가능합니다.')
		location.href = '${cpath}/member/login';
	}
	else if('${dto.gijang_ReviewBoard_Writer}' != '${user.gijang_Member_UserId}') {
		alert('본인만 수정 가능합니다.')
		location.href = '${cpath}';
	}
	
</script>

<div class="frame">
	<h2 style="text-align: center; color: #ccc;">리뷰 작성</h2>
	<div class="revireWirteForm">
		<div class="reviewProduct flex">
			<h4>리뷰 상품 : </h4>
			<img src="${cpath }/upload/${sale.gijang_SaleBoard_ImgFileName}">
			<p>${sale.gijang_SaleBoard_Title }</p>
		</div>
		<form method="POST" enctype="multipart/form-data">
			<p><input type="text" value="${dto.gijang_ReviewBoard_Title }" name="gijang_ReviewBoard_Title" placeholder="제목을 입력하세요" autofocus required></p>
			<p><textarea name="gijang_ReviewBoard_Content" placeholder="내용을 입력하세요">${dto.gijang_ReviewBoard_Content }</textarea></p>
			<p>사진리뷰(필수항목아님) : <input type="file" name="mpfile"></p>
			<p>
				<select name="gijang_ReviewBoard_Grade" required="required">
					<option value="">평점을 선택 해주세요</option>
					<option value="1.0">1.0</option>
					<option value="1.5">1.5</option>
					<option value="2.0">2.0</option>
					<option value="2.5">2.5</option>
					<option value="3.0">3.0</option>
					<option value="3.5">3.5</option>
					<option value="4.0">4.0</option>
					<option value="4.5">4.5</option>
					<option value="5.0">5.0</option>
				</select>
			</p>
			<p><input type="submit" value="작성"></p>
		</form>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

</body>
</html>