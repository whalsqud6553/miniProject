<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>기장아줌마</title>
	
	<link rel="stylesheet" href="${cpath }/resources/css/home.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/header.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/login.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/join.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/allProducts.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/productAdd.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/detailProduct.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/QnAList.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/announcementList.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/QnAWrite.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/announcementViewOne.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/QnAViewOne.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/detailProductCommonAdd.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/detailProductIndiviAdd.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/mypage.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/myOrderList.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/myWishList.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/myInfoModify.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/reviewList.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/reviewOne.css" />
	<link rel="stylesheet" href="${cpath }/resources/css/reviewWrite.css" />
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 카카오 주소 api -->
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

<header>
	<div id="header" class="frame">
		<div class="header_logo frame">
			<a href="${cpath }"><img src="${cpath }/resources/img/로고.jpg"></a>
		</div>
		<div class="header_right flex">
			<c:if test="${empty user }">
				<p><a href="${cpath }/member/login">로그인</a></p>
				<p><a href="${cpath }/member/join">회원가입</a></p>
			</c:if>
			<c:if test="${not empty user }">
				<div style="padding: 10px;"><span style="font-weight: bold;">${user.gijang_Member_UserId }</span>님 환영합니다</div>
				<p><a href="${cpath }/member/logout">로그아웃</a></p>
				<p><a href="${cpath }/member/mypage">마이페이지</a></p>
			</c:if>
		</div>
	</div>
	<div id="header_nav">
		<ul id="header_navbar" class="flex frame">
			<li><a href="${cpath }/saleBoard/allProducts">전체상품</a></li>
			<li><a href="${cpath }/saleBoard/banchanFish">반찬생선</a></li>
			<li><a href="${cpath }/saleBoard/jeasuyongFish">제수용생선</a></li>
			<li><a href="${cpath }/saleBoard/jeasuyongSeeFood">제수용수산물</a></li>
			<li><a href="${cpath }/review/reviewList">리뷰</a></li>
			<li><a href="${cpath }/QnA/QnAList">Q & A</a></li>
			<li><a href="${cpath }/announcementBoard/announcementList">공지사항</a></li>
		</ul>
	</div>
</header>


