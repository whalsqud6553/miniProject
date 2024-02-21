<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<c:if test="${empty user }">
	<script>
		alert('로그인을 해주세요.');
		location.href = '${cpath}/member/login';
	</script>
</c:if>

<div class="frame">
	<h2>찜목록</h2>
	<div class="wishListForm">
		<c:if test="${empty list }">
			<h2>찜한 상품이 없습니다.</h2>
		</c:if>
		<c:forEach var="wishlist" items="${list }">
			<div class="wishList flex">
				<div class="wishListImg">
					<a href="${cpath }/saleBoard/detailProduct/${wishlist.gijang_SaleBoard_Idx}">
						<img src="${cpath }/upload/${wishlist.gijang_SaleBoard_ImgFileName }">
					</a>
				</div>
				<div class="wishListContent">
					<ul>
						<li class="wishListTitle">
							<a href="${cpath }/saleBoard/detailProduct/${wishlist.gijang_SaleBoard_Idx}">
								${wishlist.gijang_SaleBoard_Title }
							</a>
						</li>
						<li class="oneProductPrice">${wishlist.gijang_SaleBoard_Price }원</li>
						<li class="wishListDeleteBtn">삭제</li>
					</ul>
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

<script>
	
	let list = new Array();
	<c:forEach items="${list}" var="list">
		list.push({idx: "${list.gijang_SaleBoard_Idx}"});
	</c:forEach>
	
	let wishListDeleteBtns = document.querySelectorAll('.wishListDeleteBtn');
	wishListDeleteBtns.forEach((btn, idx) => {
		btn.onclick = function() {
			let flag = confirm('정말 삭제하시겠습니까 ?');
			if(flag) {
				location.href = '${cpath}/member/deleteWishList/' + list[idx].idx;
			}
		}
	});
</script>

</body>
</html>