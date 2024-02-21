<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:if test="${user.gijang_Member_IsAdmin != 'Y' }">
	<script>
		alert('잘못된 접근 입니다.');
		location.href = '${cpath}';
	</script>
</c:if>

<div class="frame">
	<h2>관리자 상품수정</h2>
	<div class="productAdd_form">
		<form method="POST" enctype="multipart/form-data" onsubmit="return validateForm()">
			<p><input type="text" name="gijang_SaleBoard_Title" placeholder="제목" value="${dto.gijang_SaleBoard_Title }" required autofocus></p>
			<p><input id="gijang_SaleBoard_Price" type="number" name="gijang_SaleBoard_Price" placeholder="가격" required></p>
			<p><input type="file" name="logoImg" required></p>
			<select id="typeSelect" onchange="selectType()">
				<option value="">종류를 선택 해주세요</option>
				<option value="반찬생선">반찬생선</option>
				<option value="제수용생선">제수용생선</option>
				<option value="제수용수산물">제수용수산물</option>
			</select>
			<p><input id="gijang_SaleBoard_Type" type="text" name="gijang_SaleBoard_Type" value="${dto.gijang_SaleBoard_Type }" readonly="readonly"></p>
			<p><input type="submit" value="작성"></p>
		</form>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

<script>
	const typeSelect = document.getElementById('typeSelect');
	function selectType() {
		var value = typeSelect.options[typeSelect.selectedIndex].value;
		var gijang_SaleBoard_Type = document.getElementById('gijang_SaleBoard_Type');
		console.log(gijang_SaleBoard_Type)
		gijang_SaleBoard_Type.value = value;
	}
	
	function validateForm() {
		var gijang_SaleBoard_Type = document.getElementById('gijang_SaleBoard_Type');
		var value = gijang_SaleBoard_Type.value;
		if(value == '') {
			alert('종류를 선택 해주세요')
			return false;
		}
	}
	
	var gijang_SaleBoard_Price = document.getElementById('gijang_SaleBoard_Price');
	var price = Number('${dto.gijang_SaleBoard_Price}'.replace(',', ''));
	gijang_SaleBoard_Price.value = price;
</script>

</body>
</html>