<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div id="qnaList">
	<div class="frame">
		<div class="board_header flex">
			<h2>Q & A</h2>
			<form method="GET">
				<p>
					<select name="type" class="typeBox">
						<option value="title">제목</option>
						<option value="writer">작성자</option>
					</select>
					<input id="QnASearchForm" name="keyword" type="text" placeholder="검색어 입력" required>
					<button id="searchBtn" type="submit">검색</button>
				</p>
			</form>
		</div>
		<div class="board_titles flex">
			<p>답변상태</p>
			<p>제목</p>
			<p>작성자</p>
			<p>작성일</p>
		</div>
		<c:if test="${empty qnaList }">
			<h3 style="text-align: center;">게시글이 존재하지 않습니다.</h3>
		</c:if>
		<c:if test="${not empty qnaList }">
			<c:forEach var="qnaList" items="${qnaList }">
				<div class="board_contents flex">
						<p>
							<c:if test="${qnaList.gijang_QnABoard_IsAnswer == 'N'}">
								답변대기
							</c:if>
							<c:if test="${qnaList.gijang_QnABoard_IsAnswer == 'Y'}">
								답변완료
							</c:if>
						</p>
						<p>
							<a href="${cpath }/QnA/QnAViewOne/${qnaList.gijang_QnABoard_Idx}">${qnaList.gijang_QnABoard_Title }</a>
						</p>
						<p>${qnaList.gijang_QnABoard_Writer }</p>
						<p>${qnaList.gijang_QnABoard_Wdate }</p>
				</div>
			</c:forEach>
		</c:if>
		<c:if test="${not empty titleSearchList }">
			<c:forEach var="titleSearchList" items="${titleSearchList }" >
				<div class="board_contents flex">
						<p>
							<c:if test="${titleSearchList.gijang_QnABoard_IsAnswer == 'N'}">
								답변대기
							</c:if>
							<c:if test="${titleSearchList.gijang_QnABoard_IsAnswer == 'Y'}">
								답변완료
							</c:if>
						</p>
						<p>
							<a href="${cpath }/QnA/QnAViewOne/${titleSearchList.gijang_QnABoard_Idx}">${titleSearchList.gijang_QnABoard_Title }</a>
						</p>
						<p>${titleSearchList.gijang_QnABoard_Writer }</p>
						<p>${titleSearchList.gijang_QnABoard_Wdate }</p>
				</div>
			</c:forEach>
		</c:if>
		
		<c:if test="${not empty writerSearchList }">
			<c:forEach var="writerSearchList" items="${writerSearchList }" >
				<div class="board_contents flex">
						<p>
							<c:if test="${writerSearchList.gijang_QnABoard_IsAnswer == 'N'}">
								답변대기
							</c:if>
							<c:if test="${writerSearchList.gijang_QnABoard_IsAnswer == 'Y'}">
								답변완료
							</c:if>
						</p>
						<p>
							<a href="${cpath }/QnA/QnAViewOne/${writerSearchList.gijang_QnABoard_Idx}">${writerSearchList.gijang_QnABoard_Title }</a>
						</p>
						<p>${writerSearchList.gijang_QnABoard_Writer }</p>
						<p>${writerSearchList.gijang_QnABoard_Wdate }</p>
				</div>
			</c:forEach>
		</c:if>
		
		<div class="board_btn">
			<a href="${cpath }/QnA/QnAWrite"><button id="qnaWriteBtn">글쓰기</button></a>
		</div>
		
		<!-- 전체페이지 페이징  -->
		<c:if test="${not empty qnaList }">
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
		
		<!-- 제목 검색 페이징 -->
		<c:if test="${not empty titleSearchList }">
			<div class="pagingForm">
				<c:if test="${titlePaging.startPage != 1 }">
					<a href="${cpath }/QnA/QnAList?type=${titlePaging.type }&keyword=${titlePaging.keyword }&nowPage=${titlePaging.startPage - 1 }&cntPerPage=${titlePaging.cntPerPage}">&lt;</a>
				</c:if>
				<c:forEach begin="${titlePaging.startPage }" end="${titlePaging.endPage }" var="p">
				<c:choose>
					<c:when test="${p == titlePaging.nowPage }">
						<b>${p }</b>
					</c:when>
					<c:when test="${p != titlePaging.nowPage }">
						<a href="${cpath }/QnA/QnAList?type=${titlePaging.type }&keyword=${titlePaging.keyword }&nowPage=${p }&cntPerPage=${titlePaging.cntPerPage}">${p }</a>
					</c:when>
				</c:choose>
				</c:forEach>
				<c:if test="${titlePaging.endPage != titlePaging.lastPage}">
					<a href="${cpath }/QnA/QnAList?type=${titlePaging.type }&keyword=${titlePaging.keyword }&nowPage=${titlePaging.endPage+1 }&cntPerPage=${titlePaging.cntPerPage}">&gt;</a>
				</c:if>
			</div>
		</c:if>
		
		<!-- 아이디 검색 페이징 -->
		<c:if test="${not empty writerSearchList }">
			<div class="pagingForm">
				<c:if test="${writerPaging.startPage != 1 }">
					<a href="${cpath }/QnA/QnAList?type=${writerPaging.type }&keyword=${writerPaging.keyword }&nowPage=${writerPaging.startPage - 1 }&cntPerPage=${writerPaging.cntPerPage}">&lt;</a>
				</c:if>
				<c:forEach begin="${writerPaging.startPage }" end="${writerPaging.endPage }" var="p">
				<c:choose>
					<c:when test="${p == writerPaging.nowPage }">
						<b>${p }</b>
					</c:when>
					<c:when test="${p != writerPaging.nowPage }">
						<a href="${cpath }/QnA/QnAList?type=${writerPaging.type }&keyword=${writerPaging.keyword }&nowPage=${p }&cntPerPage=${writerPaging.cntPerPage}">${p }</a>
					</c:when>
				</c:choose>
				</c:forEach>
				<c:if test="${writerPaging.endPage != writerPaging.lastPage}">
					<a href="${cpath }/QnA/QnAList?type=${writerPaging.type }&keyword=${writerPaging.keyword }&nowPage=${writerPaging.endPage+1 }&cntPerPage=${writerPaging.cntPerPage}">&gt;</a>
				</c:if>
			</div>
		</c:if>
		
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

<script>
	let typeBox = document.querySelector('.typeBox');
	if(typeBox.value == '') {
		alert('검색 조건을 선택해 주세요');
	}
	
	
</script>

</body>
</html>