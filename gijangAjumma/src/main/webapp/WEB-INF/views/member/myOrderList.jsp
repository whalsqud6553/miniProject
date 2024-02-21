<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const user = '${user}';
	if(user == '') {
		alert('로그인을 해주세요.')
		location.href = '${cpath}/member/login';
	}
</script>

<div class="frame">
	<h2>내 주문 목록</h2>
	<div class="myOrderListForm">
		<c:if test="${empty list }">
			<h3>주문 내역이 없습니다.</h3>
		</c:if>
		<c:forEach var="orderlist" items="${list }" varStatus="status">
			<div class="myOrderList flex">
				<div class="orderListImg">
					<p class="orderIdx">주문번호 : <label style="font-weight: bold;">${orderlist.gijang_OrderList_Idx }</label></p>
					<a href="${cpath }/saleBoard/detailProduct/${orderlist.gijang_OrderList_SaleBoardIdx}">
						<img src="${cpath }/upload/${saleboard[status.index].gijang_SaleBoard_ImgFileName }">
					</a>
				</div>
				<div class="orderListContent">
					<ul>
						<li class="orderTitle">
							<a href="${cpath }/saleBoard/detailProduct/${orderlist.gijang_OrderList_SaleBoardIdx}">
								${orderlist.gijang_OrderList_ProductName }
							</a>
						</li>
						<li class="oneProductPrice">${saleboard[status.index].gijang_SaleBoard_Price }원</li>
						<li class="orderOptions flex">
							<p class="detailName">${orderlist.gijang_OrderList_ProductDetailName }</p>
							<p class="detailCount">수량 : ${orderlist.gijang_OrderList_ProductDetailCount }</p>
						</li>
						<li>결제 금액 : <label style="font-weight: bold;">${orderlist.gijang_OrderList_ProductDetailPrice }원</label></li>
					</ul>
					<div class="reviewWrite">
						<c:if test="${orderlist.gijang_OrderList_IsReview == 'N' }">
							<p><a href="${cpath }/review/reviewWrite/${orderlist.gijang_OrderList_Idx}">리뷰 쓰러 가기</a></p>
						</c:if>
						<c:if test="${orderlist.gijang_OrderList_IsReview == 'Y' }">
							<p style="color: blue;">리뷰 작성 완료</p>
						</c:if>
					</div>
				</div>
				<div class="deliveryForm">
					<p>배송상태</p>
					<div class="deliveryStatus">
						<p>배송준비중</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

<script>
	let detailNames = document.querySelectorAll('.detailName');
	detailNames.forEach(detailName => {
		let name= detailName.innerText.replace('from', '~').replace('plus', '+');
		detailName.innerText = name;
	})
</script>
</body>
</html>