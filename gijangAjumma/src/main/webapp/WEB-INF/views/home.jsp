<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="slide">
	<ul class="slides">
		<li>
			<img src="https://shop-phinf.pstatic.net/20220407_170/1649334071274AhOL4_JPEG/%A4%BC%A4%BE%A4%B5%A4%B8-001.jpg">
		</li>
		<li>
			<img src="https://shop-phinf.pstatic.net/20220928_34/1664363422872BcFgM_PNG/%BD%BA%C5%E4%BE%EE%B9%E8%B3%CA-%C4%C4-001.png">
		</li>
		<li>
			<img src="https://shop-phinf.pstatic.net/20220928_67/1664363430725skyVR_PNG/%BD%BA%C5%E4%BE%EE%B9%E8%B3%CA-%C4%C4-002.png">
		</li>
		<li>
			<img src="https://shop-phinf.pstatic.net/20220928_263/1664363438688OHAD8_PNG/%BD%BA%C5%E4%BE%EE%B9%E8%B3%CA-%C4%C4-003.png">
		</li>
	</ul>
	<div id="slideBtn" class="directionNav">
		<button id="prev" class="btn"><</button>
		<button id="next" class="btn">></button>
	</div>
</div>

<footer><h3>footer</h3></footer>

<script>
	let slides = document.querySelector('.slides');
	let slideImg = document.querySelectorAll('.slides li');
	
	currentIdx = 0;
	slideCount = slideImg.length;
	
	prev = document.getElementById('prev'); // 이전 버튼
	next = document.getElementById('next'); // 다음 버튼
	
	slideWidth = 1905;	// 이미지 넓이
	slideMargin = 0;
	
	makeClone();	// 처음 이미지와 마지막 이미지 복사함수
	initfunction();	// 슬라이드 넓이와 위치값 초기화 함수
	
	function makeClone() {
		let cloneSlide_first = slideImg[0].cloneNode(true);
		let cloneSlide_last = slides.lastElementChild.cloneNode(true);
		slides.append(cloneSlide_first);
		slides.insertBefore(cloneSlide_last, slides.firstElementChlid);
	}
	function initfunction() {
		slides.style.width = (slideWidth + slideMargin) * (slideCount + 2) + 'px';
		slides.style.left = -(slideWidth + slideMargin) + 'px';
	}
	next.addEventListener('click', function() {
		// 다음 버튼을 눌렀을때
		if(currentIdx <= slideCount - 1) {
			// 슬라이드 이동
			slides.style.left = -(currentIdx + 2) * (slideWidth + slideMargin) + 'px';
		    slides.style.transition = `${0.5}s ease-out`; //이동 속도
		}
		// 마지막 슬라이드 일때
		if(currentIdx == slideCount - 1) {
			setTimeout(function () {
				// 0.5초동안 복사한 첫번째 이미지에서, 진짜 첫번째 위치로 이동
				slides.style.left = -(slideWidth + slideMargin) + 'px';
				slides.style.transition = `${0}s ease-out`;
			}, 500);
			currentIdx = -1;
		}
		currentIdx += 1;
	});
	prev.addEventListener('click', function() {
		// 이전 버튼 눌렀을때
		if(currentIdx >= 0) {
			slides.style.left = -currentIdx * (slideWidth + slideMargin) + 'px';
			slides.style.transition = `${0.5}s ease-out`;
		}
		// 마지막 일때
		if(currentIdx == 0) {
			setTimeout(function () {
				slides.style.left = -slideCount * (slideWidth + slideMargin) + 'px';
				slides.style.transition = `${0}s ease-out`;
			}, 500);
			currentIdx = slideCount;
		}
		currentIdx -= 1;
	});
	
</script>

</body>
</html>