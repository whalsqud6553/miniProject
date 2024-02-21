<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:if test="${user.gijang_Member_IsAdmin != 'Y' }">
	<script>
		alert('잘못된 접근 입니다.')
		location.href = '${cpath}'
	</script>
</c:if>

<div class="frame">
	<h2>개별 내용 추가(중간에 들어갈 내용)</h2>
	<div class="individualAddForm">
		<form method="POST" enctype="multipart/form-data" style="text-align: center;">
			<div class="individualProduct">
				<p>상품 개별 설명 1</p>
				<p><input type="file" name="individual_ImgFile1"></p>
			</div>
			<div class="individualProduct">
				<p>상품 개별 설명 2</p>
				<p><input type="file" name="individual_ImgFile2"></p>
			</div>
			<div class="individualProduct">
				<p>상품 개별 설명 3</p>
				<p><input type="file" name="individual_ImgFile3"></p>
			</div>
			<div class="individualProduct">
				<p>상품 개별 설명 4</p>
				<p><input type="file" name="individual_ImgFile4"></p>
			</div>
			<div class="individualProduct">
				<p>상품 개별 설명 5</p>
				<p><input type="file" name="individual_ImgFile5"></p>
			</div>
			<div class="individualProduct">
				<p>상품 개별 설명 6</p>
				<p><input type="file" name="individual_ImgFile6"></p>
			</div>
			<div class="individualProduct">
				<p>상품 개별 설명 7</p>
				<p><input type="file" name="individual_ImgFile7"></p>
			</div>
			<div class="individualProduct">
				<p>상품 개별 설명 8</p>
				<p><input type="file" name="individual_ImgFile8"></p>
			</div>
			<p><input type="submit" value="작성"></p>
		</form>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

</body>
</html>