<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="frame">
	<div class="reviewListForm">
		<div class="board_header flex">
			<h2>리뷰</h2>
			<form method="GET">
				<p>
					<select name="type" class="typeBox">
						<option value="productName">상품명</option>
						<option value="writer">작성자</option>
					</select>
					<input id="QnASearchForm" name="keyword" type="text" placeholder="검색어 입력" required>
					<button id="searchBtn" type="submit">검색</button>
				</p>
			</form>
		</div>
		<div class="review_titles flex">
			<p>상품명</p>
			<p>제목</p>
			<p>작성자</p>
			<p>작성일</p>
		</div>
		<c:if test="${empty list and empty productSearchList and empty writerSearchList }">
			<h3 style="text-align: center;">게시글이 존재하지 않습니다</h3>
		</c:if>
		
		<!-- 전체리스트 -->
		<c:if test="${not empty list }">
			<c:forEach var="list" items="${list }">
				<c:if test="${list.gijang_ReviewBoard_IsDelete == 'N' }">
					<div class="review_contents flex">
						<p class="reviewProductNames">${list.gijang_ReviewBoard_ProductName }</p>
						<p class="reviewTitle">
							<a href="${cpath }/review/reviewOne/${list.gijang_ReviewBoard_Idx}">
								${list.gijang_ReviewBoard_Title } <span style="color: yellow;">★</span>(${list.gijang_ReviewBoard_Grade })
							</a>
						</p>
						<p class="reviewWriter">${list.gijang_ReviewBoard_Writer }</p>
						<p>${list.gijang_ReviewBoard_Wdate }</p>
					</div>
				</c:if>
			</c:forEach>
		</c:if>
		<!-- 상품 검색 리스트 -->
		<c:if test="${not empty productSearchList }">
			<c:forEach var="productSearchList" items="${productSearchList }">
				<c:if test="${productSearchList.gijang_ReviewBoard_IsDelete == 'N' }">
					<div class="review_contents flex">
						<p class="reviewProductNames">${productSearchList.gijang_ReviewBoard_ProductName }</p>
						<p class="reviewTitle">
							<a href="${cpath }/review/reviewOne/${productSearchList.gijang_ReviewBoard_Idx}">
								${productSearchList.gijang_ReviewBoard_Title } <span style="color: yellow;">★</span>(${productSearchList.gijang_ReviewBoard_Grade })
							</a>
						</p>
						<p class="reviewWriter">${productSearchList.gijang_ReviewBoard_Writer }</p>
						<p>${productSearchList.gijang_ReviewBoard_Wdate }</p>
					</div>
				</c:if>
			</c:forEach>
		</c:if>
		
		<!-- 아이디 검색 리스트 -->
		<c:if test="${not empty writerSearchList }">
			<c:forEach var="writerSearchList" items="${writerSearchList }">
				<c:if test="${writerSearchList.gijang_ReviewBoard_IsDelete == 'N' }">
					<div class="review_contents flex">
						<p class="reviewProductNames">${writerSearchList.gijang_ReviewBoard_ProductName }</p>
						<p class="reviewTitle">
							<a href="${cpath }/review/reviewOne/${writerSearchList.gijang_ReviewBoard_Idx}">
								${writerSearchList.gijang_ReviewBoard_Title } <span style="color: yellow;">★</span>(${writerSearchList.gijang_ReviewBoard_Grade })
							</a>
						</p>
						<p class="reviewWriter">${writerSearchList.gijang_ReviewBoard_Writer }</p>
						<p>${writerSearchList.gijang_ReviewBoard_Wdate }</p>
					</div>
				</c:if>
			</c:forEach>
		</c:if>
		
		<!-- 전체리스트 페이징 -->
		<c:if test="${not empty list }">
			<div class="pagingForm">
				<c:if test="${paging.startPage != 1 }">
					<a href="${cpath }/QnA/QnAList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
				</c:if>
				<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
				<c:choose>
					<c:when test="${p == paging.nowPage }">
						<b>${p }</b>
					</c:when>
					<c:when test="${p != paging.nowPage }">
						<a href="${cpath }/QnA/QnAList?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
					</c:when>
				</c:choose>
				</c:forEach>
				<c:if test="${paging.endPage != paging.lastPage}">
					<a href="${cpath }/QnA/QnAList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
				</c:if>
			</div>
		</c:if>
		
		<!-- 상품 검색 페이징 -->
		<c:if test="${not empty productSearchList }">
			<div class="pagingForm">
				<c:if test="${productPaging.startPage != 1 }">
					<a href="${cpath }/review/reviewList?type=${productPaging.type }&keyword=${productPaging.keyword }&nowPage=${productPaging.startPage - 1 }&cntPerPage=${productPaging.cntPerPage}">&lt;</a>
				</c:if>
				<c:forEach begin="${productPaging.startPage }" end="${productPaging.endPage }" var="p">
				<c:choose>
					<c:when test="${p == productPaging.nowPage }">
						<b>${p }</b>
					</c:when>
					<c:when test="${p != productPaging.nowPage }">
						<a href="${cpath }/review/reviewList?type=${productPaging.type }&keyword=${productPaging.keyword }&nowPage=${p }&cntPerPage=${productPaging.cntPerPage}">${p }</a>
					</c:when>
				</c:choose>
				</c:forEach>
				<c:if test="${productPaging.endPage != productPaging.lastPage}">
					<a href="${cpath }/review/reviewList?type=${productPaging.type }&keyword=${productPaging.keyword }&nowPage=${productPaging.endPage+1 }&cntPerPage=${productPaging.cntPerPage}">&gt;</a>
				</c:if>
			</div>
		</c:if>
		
		<!-- 아이디 검색 페이징 -->
		<c:if test="${not empty writerSearchList }">
			<div class="pagingForm">
				<c:if test="${writerPaging.startPage != 1 }">
					<a href="${cpath }/v?type=${writerPaging.type }&keyword=${writerPaging.keyword }&nowPage=${writerPaging.startPage - 1 }&cntPerPage=${writerPaging.cntPerPage}">&lt;</a>
				</c:if>
				<c:forEach begin="${writerPaging.startPage }" end="${writerPaging.endPage }" var="p">
				<c:choose>
					<c:when test="${p == writerPaging.nowPage }">
						<b>${p }</b>
					</c:when>
					<c:when test="${p != writerPaging.nowPage }">
						<a href="${cpath }/review/reviewList?type=${writerPaging.type }&keyword=${writerPaging.keyword }&nowPage=${p }&cntPerPage=${writerPaging.cntPerPage}">${p }</a>
					</c:when>
				</c:choose>
				</c:forEach>
				<c:if test="${writerPaging.endPage != writerPaging.lastPage}">
					<a href="${cpath }/review/reviewList?type=${writerPaging.type }&keyword=${writerPaging.keyword }&nowPage=${writerPaging.endPage+1 }&cntPerPage=${writerPaging.cntPerPage}">&gt;</a>
				</c:if>
			</div>
		</c:if>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

<script>
	let reviewProductNames = document.querySelectorAll('.reviewProductNames');
	reviewProductNames.forEach((productName, idx) => {
		let name = productName.innerText.substring(5, 19) + '..';
		productName.innerText = name;
	})
</script>

</body>
</html>