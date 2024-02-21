<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div id="allProducts">
	<div class="board_header flex frame">
		<h2>전체 상품</h2>
		<c:if test="${user.gijang_Member_IsAdmin == 'Y' }">
			<button id="productAdd">상품추가</button>
		</c:if>
	</div>
	<div class="board_products products_frame">
		<ul class="flex">
			<c:forEach var="list" items="${list }">
				<li class="product">
					<div class="product_img">
						<a href="${cpath }/saleBoard/detailProduct/${list.gijang_SaleBoard_Idx}"><img src="${cpath }/upload/${list.gijang_SaleBoard_ImgFileName}"></a>
					</div>
					<div class="product_price">
						<p><a href="${cpath }/saleBoard/detailProduct/${list.gijang_SaleBoard_Idx}">${list.gijang_SaleBoard_Price }원</a></p>
					</div>
					<div class="product_title">
						<p><a href="${cpath }/saleBoard/detailProduct/${list.gijang_SaleBoard_Idx}">${list.gijang_SaleBoard_Title }</a></p>
					</div>
					<div class="product_grade">
						<p>★★★★★</p>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

<script>
	const user = '${user}';
	if(user.gijang_Member_IsAdmin == 'Y') {
		const productAdd = document.getElementById('productAdd');
		productAdd.onclick = function() {
			location.href = '${cpath}/admin/productAdd';
		}
		
	}
	
	// 제목이 긴 게시글 자르기
	const productTitles = document.querySelectorAll('.product_title > p > a');
	
	for(let i = 0; i < productTitles.length; i++) {
		if(productTitles[i].innerText.length > 16) {
			var shortTitle = productTitles[i].innerText.substr(0, 16) + '...';
			productTitles[i].innerText = shortTitle;
		}
	}
</script>

</body>
</html>