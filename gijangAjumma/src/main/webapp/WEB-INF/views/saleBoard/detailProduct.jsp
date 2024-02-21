<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div id="detailProduct">
	<div class="frame">
		<div class="datailProduct_frame">
			<c:if test="${user.gijang_Member_IsAdmin == 'Y' }">
				<div class="adminBtn flex">
					<button id="productDeleteBtn">글 삭제</button>
					<button id="productModifyBtn">글 수정</button>
					<button id="detailProductCommonAddBtn">상세페이지 공통내용 추가</button>
					<button id="detailProductIndiviAddBtn">상세페이지 개별내용 추가</button>
				</div>
			</c:if>
			<div class="product_buy flex">
				<div class="product_img">
					<img src="${cpath }/upload/${dto.gijang_SaleBoard_ImgFileName}">
				</div>
				<div class="buy_form">
					<div class="buy_frame">
						<h3>${dto.gijang_SaleBoard_Title }</h3>
						<p>${dto.gijang_SaleBoard_Price }원</p>
						<nav class="selectBar">
							<select id="sizeSelect" onchange="selectSize()">
								<option value="none">사이즈를 선택해주세요</option>
								<c:if test="${dto.gijang_SaleBoard_Idx == '1' }">
									<option value="0">33~36cm</option>
									<option value="2000">36~38cm(+2000원)</option>
									<option value="4000">38~40cm(+4000원)</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '2' }">
									<option value="0">小小小(33~36cm)</option>
									<option value="2000">小小(36~38cm)(+2000원)</option>
									<option value="4000">小(38~40cm)(+4000원)</option>
									<option value="6000">中小(40~41cm)(+6000원)</option>
									<option value="8000">中(41~43cm)(+8000원)</option>
									<option value="11000">中大(44~46cm)(+11000원)</option>
									<option value="15000">大小(47~50cm)(+15000원)</option>
									<option value="18000">大(51~53cm)(+18000원)</option>
									<option value="20000">王大(54~57cm)(+20000원)</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '3' }">
									<option value="0">돌문어小</option>
									<option value="5000">돌문어中(+5000원)</option>
									<option value="10000">돌문어中大(+10000원)</option>
									<option value="15000">돌문어大(+15000원)</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '4' }">
									<option value="0">아까小(37~39cm)</option>
									<option value="2000">아까中(40~42cm)(+2000원)</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '5' }">
									<option value="0">30~33cm</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '6' }">
									<option value="0">40~42cm</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '7' }">
									<option value="0">33~36cm3마리</option>
									<option value="6000">36~38cm3마리(+6000원)</option>
									<option value="12600">38~40cm3마리(+12600원)</option> 
									<option value="16000">33~36cm5마리(+16000원)</option> 
									<option value="24000">36~38cm5마리(+24000원)</option> 
									<option value="35600">38~40cm5마리(+35600원)</option> 
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '8' }">
									<option value="0">30~33cm 5마리</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '9' }">
									<option value="0">적돔小(32~35cm)</option>
									<option value="5000">적돔中(37~40cm)(+5000원)</option>
									<option value="8000">적돔大(44~47cm)(+8000원)</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '10' }">
									<option value="0">침조기小(36~39cm)</option>
									<option value="8000">침조기中(39~41cm)(+8000원)</option>
									<option value="15000">침조기大(43~45cm)(+15000원)</option>
									<option value="21600">침조기王大(50~53cm)(+21600원)</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '11' }">
									<option value="0">小小小사이즈(36~38cm)</option>
									<option value="1000">小小사이즈(38~40cm)(+1000원)</option>
									<option value="2000">小사이즈(40~42cm)(+2000원)</option>
									<option value="6000">中사이즈(44~47cm)(+6000원)</option>
									<option value="8000">大사이즈(50~53cm)(+8000원)</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '12' }">
									<option value="0">아까小(37~39cm)</option>
									<option value="2000">아까中(40~42cm)(+2000원)</option>
									<option value="5000">아까大(43~46cm)(+5000원)</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '13' }">
									<option value="0">능성어中(38~40cm)</option>
									<option value="2000">능성어大(45~47cm)(+2000원)</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '14' }">
									<option value="0">1봉지</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '15' }">
									<option value="0">1봉지 (봉지당 3조각)</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '16' }">
									<option value="0">1봉지</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '17' }">
									<option value="0">1봉지</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '18' }">
									<option value="0">1봉지</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '19' }">
									<option value="0">1마리</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '20' }">
									<option value="0">2개짜리(大)</option>
									<option value="0">3개짜리(中)</option>
									<option value="0">4개짜리(小)</option>
								</c:if>
								<c:if test="${dto.gijang_SaleBoard_Idx == '21' }">
									<option value="0">1꼬지</option>
								</c:if>
							</select>
						</nav>
						<div class="selectProducts">
							
						</div>
						<div class="totalPriceForm flex">
							<p class="totalLeft">총 상품 금액</p>
							<div class="totalRight flex">
								<p>총 수량 <label class="totalCount">0</label>개</p>
								<p>|</p>
								<p class="totalRightPrice">
									<label class="totalPrice">0</label>원
								</p>
							</div>
						</div>
						<div class="buyBtnForm">
							<div class="buyBtn">
								<button id="productBuyBtn">구매하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
				<div class="wishListBtnForm">
					<button id="wishListAddBtn"><h3>찜하기</h3></button>
				</div>
			<div class="product_Content">
				<ul>
					<!-- 각 상품 공통 내용 -->
					<c:if test="${not empty detail.productDetail_ImgFileName1 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName1}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName2 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName2}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName3 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName3}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName4 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName4}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName5 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName5}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName6 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName6}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName7 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName7}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName8 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName8}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName9 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName9}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName10 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName10}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName11}">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName11}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName12 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName12}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName13 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName13}"></li>
					</c:if>
					<!-- 각 상품 공통 내용 -->
					
					
					<!-- 각 상품 내용 -->
					<c:if test="${not empty individual.productDetailIndividual_ImgFileName1 }">
						<li><img src="${cpath }/upload/${individual.productDetailIndividual_ImgFileName1}"></li>
					</c:if>
					<c:if test="${not empty individual.productDetailIndividual_ImgFileName2 }">
						<li><img src="${cpath }/upload/${individual.productDetailIndividual_ImgFileName2}"></li>
					</c:if>
					<c:if test="${not empty individual.productDetailIndividual_ImgFileName3 }">
						<li><img src="${cpath }/upload/${individual.productDetailIndividual_ImgFileName3}"></li>
					</c:if>
					<c:if test="${not empty individual.productDetailIndividual_ImgFileName4 }">
						<li><img src="${cpath }/upload/${individual.productDetailIndividual_ImgFileName4}"></li>
					</c:if>
					<c:if test="${not empty individual.productDetailIndividual_ImgFileName5 }">
						<li><img src="${cpath }/upload/${individual.productDetailIndividual_ImgFileName5}"></li>
					</c:if>
					<c:if test="${not empty individual.productDetailIndividual_ImgFileName6 }">
						<li><img src="${cpath }/upload/${individual.productDetailIndividual_ImgFileName6}"></li>
					</c:if>
					<c:if test="${not empty individual.productDetailIndividual_ImgFileName7 }">
						<li><img src="${cpath }/upload/${individual.productDetailIndividual_ImgFileName7}"></li>
					</c:if>
					<c:if test="${not empty individual.productDetailIndividual_ImgFileName8 }">
						<li><img src="${cpath }/upload/${individual.productDetailIndividual_ImgFileName8}"></li>
					</c:if>
					
					<!-- 각 상품 내용 -->
					
					
					<!-- 각 상품 공통 내용 -->
					<c:if test="${dto.gijang_SaleBoard_Type == '반찬생선' or dto.gijang_SaleBoard_Type == '제수용생선' }">
						<c:if test="${not empty detail.productDetail_ImgFileName14 }">
							<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName14}"></li>
						</c:if>
						<c:if test="${not empty detail.productDetail_ImgFileName15 }">
							<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName15}"></li>
						</c:if>
						<c:if test="${not empty detail.productDetail_ImgFileName16 }">
							<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName16}"></li>
						</c:if>
					</c:if>
					
					<c:if test="${not empty detail.productDetail_ImgFileName17 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName17}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName18 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName18}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName19 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName19}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName20 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName20}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName21 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName21}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName22 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName22}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName23 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName23}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName24 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName24}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName25 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName25}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName26 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName26}"></li>
					</c:if>
					<c:if test="${not empty detail.productDetail_ImgFileName27 }">
						<li><img src="${cpath }/upload/${detail.productDetail_ImgFileName27}"></li>
					</c:if>
					<!-- 각 상품 공통 내용 -->
				</ul>
			</div>
		</div>
	</div>
</div>

<!-- 결제 모달창 -->
<dialog id="paymentModal">
	<div class="closeModal">X</div>
	<div class="productsInfo">
		<h3>주문상품정보</h3>
		<div class="productCheck">
			
		</div>
	</div>
	<div class="paymentForm">
		<form method="POST">
			<h3>이름</h3>
			<p><input type="text" name="" value="${user.gijang_Member_UserName }" placeholder="이름" required></p>
			<h3>전화번호</h3>
			<p><input type="text" name="" value="${user.gijang_Member_Pnum }" placeholder="전화번호" required></p>
			<h3>배송지</h3>
			<p>
				<input type="text" name="gijang_Member_Zipcode" id="gijang_Member_Zipcode" value="${user.gijang_Member_Zipcode }" placeholder="우편번호" required>
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
			</p>
			<p><input type="text" name="gijang_Member_Address" id="gijang_Member_Address" value="${user.gijang_Member_Address }" placeholder="주소" required></p>
			<p>
				<input type="text" name="gijang_Member_DetailAddress" id="gijang_Member_DetailAddress" value="${user.gijang_Member_DetailAddress }" placeholder="상세주소" required>
				<input type="text" name="gijang_Member_ExtraAddress" id="gijang_Member_ExtraAddress" value="${user.gijang_Member_ExtraAddress }" placeholder="참고항목(비워도 상관없음)">
			</p>
		</form>
	</div>
	<div class="paymentCheckBoxForm">
		<label><input type="checkbox" id="paymentCheckBox" onclick="isChecked()">위 내용을 확인하셨다면 체크해주세요.</label>
	</div>
	<div class="paymentBtnForm">
		<button id="kakaoPayBtn" disabled="disabled">카카오로 결제</button>
	</div>
</dialog>

<footer>
	<h3>footer</h3>
</footer>

<script>
	// 카카오 주소 api
	function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("gijang_Member_ExtraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("gijang_Member_ExtraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('gijang_Member_Zipcode').value = data.zonecode;
                document.getElementById("gijang_Member_Address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("gijang_Member_DetailAddress").focus();
            }
        }).open();
    }

	const productDeleteBtn = document.getElementById('productDeleteBtn');
	const productModifyBtn = document.getElementById('productModifyBtn');
	const detailProductCommonAddBtn = document.getElementById('detailProductCommonAddBtn');
	const detailProductIndiviAddBtn = document.getElementById('detailProductIndiviAddBtn');
	const isAdmin = '${user.gijang_Member_IsAdmin}';
	const idx = '${dto.gijang_SaleBoard_Idx}';
	
	if(isAdmin == 'Y') {
		productDeleteBtn.onclick = function() {
			var flag = confirm('정말 삭제 하시겠습니까?');
			if(flag) {
				location.href = '${cpath}/admin/deleteProduct/' + idx;
			}
		}
		productModifyBtn.onclick = function() {
			var flag = confirm('정말 수정 하시겠습니까?')
			if(flag) {
				location.href = '${cpath}/admin/modifyProduct/' + idx;
			}
		}
		detailProductCommonAddBtn.onclick = function() {
			var flag = confirm('상세페이지 공통설명 추가 페이지로 이동합니다')
			if(flag) {
				location.href = '${cpath}/admin/detailProductCommonAdd/' + idx;
			}
		}
		detailProductIndiviAddBtn.onclick = function() {
			var flag = confirm('상세페이지 개별설명 추가 페이지로 이동합니다')
			if(flag) {
				location.href = '${cpath}/admin/detailProductIndiviAdd/' + idx;
			}
		}
	}
	
	const sizeSelect = document.getElementById('sizeSelect');
	var totalPrice = document.querySelector('.totalPrice');
	var totalCount = document.querySelector('.totalCount');
	var count = 0;
	var priceArr = [];
	
	function selectSize() {
		var value = parseInt(sizeSelect.options[sizeSelect.selectedIndex].value, 10);
		if(isNaN(value) == false) {
			
			var optionText = sizeSelect.options[sizeSelect.selectedIndex].innerText;
			const fishSize = document.querySelectorAll('.fishSize');
			for(let i = 0; i < fishSize.length; i++) {
				if(fishSize[i].innerText == optionText) {
					alert('이미 선택한 옵션입니다.');
					return;
				}
			}
			
			let classLength = document.getElementsByClassName('sizePrice').length;
			var price = parseInt('${dto.gijang_SaleBoard_Price}'.replace(/,/g, ''), 10);
			var priceOne = price + value;	// 개당 가격
			
			if(totalPrice.innerText == '0') {
				totalPrice.innerText = priceOne.toLocaleString('ko-KR');
			}
			else {
				var currentPrice = parseInt(totalPrice.innerText.replace(/,/g, ''), 10);
				totalPrice.innerText = (currentPrice + priceOne).toLocaleString('ko-KR');
			}
			
			// 개당 가격을 배열로 관리
			if(priceArr.length <= classLength) {
				priceArr.push(priceOne);
			}
			
			
			var selectProducts = document.querySelector('.selectProducts');
			var div = document.createElement('div');
			var fishSizeP = document.createElement('p');
			var fishPriceFormP = document.createElement('p');
			var countUpDownNav = document.createElement('nav');
			var fishSizeNav = document.createElement('nav');
			var upDownTotalNumLabel = document.createElement('label');
			var minusP = document.createElement('p');
			var plusP = document.createElement('p');
			var fishPriceP = document.createElement('p');
			var deleteP = document.createElement('p');
			
			selectProducts.appendChild(div);
			
			div.className = 'sizePrice';
			fishSizeP.className = 'fishSizeForm';
			fishPriceFormP.className = 'fishPriceForm';
			countUpDownNav.className = 'countUpDown';
			fishSizeNav.className = 'fishSize';
			minusP.className = 'minus';
			plusP.className = 'plus';
			upDownTotalNumLabel.className = 'upDownTotalNum';
			fishPriceP.className = 'fishPrice';
			deleteP.className = 'deleteProductBtn';
			
			fishSizeP.appendChild(fishSizeNav);
			fishSizeNav.innerText = optionText;
			countUpDownNav.appendChild(minusP);
			countUpDownNav.appendChild(upDownTotalNumLabel);
			countUpDownNav.appendChild(plusP);
			minusP.innerText = '-';
			upDownTotalNumLabel.innerText = 1;
			plusP.innerText = '+';
			fishSizeP.appendChild(countUpDownNav);
			
			fishPriceFormP.appendChild(fishPriceP);
			fishPriceFormP.appendChild(deleteP);
			fishPriceP.innerText = priceOne.toLocaleString('ko-KR');
			deleteP.innerText = 'X';
			
			div.appendChild(fishSizeP);
			div.appendChild(fishPriceFormP);
			
			// 한개 고를때마다 한개씩 오름
			count++;
			
			// 상품 갯수
			var upDownTotalNums = document.querySelectorAll('.upDownTotalNum');
			
			// 더하기 버튼
			const plusBtns = document.querySelectorAll('.plus');
			// 빼기 버튼
			const minusBtns = document.querySelectorAll('.minus');
			// 삭제 버튼
			const deleteBtns = document.querySelectorAll('.deleteProductBtn')
			
			plusBtns.forEach((btn, idx) => {
				btn.onclick = function() {
					// 배열을 통해 버튼 갯수만큼 상품개수를 따로 관리
					var counts = Array.from({ length: plusBtns.length }, () => upDownTotalNums[idx].innerText);
					
					var prices = document.querySelectorAll('.fishPrice');
					var price = parseInt('${dto.gijang_SaleBoard_Price}'.replace(/,/g, ''), 10);
					var priceOne = price + value;	// 개당 가격
					
					let classLength = document.getElementsByClassName('sizePrice').length;
					if(counts[idx] < 10 && classLength * 10 > count) {
						counts[idx]++;
						count++;
						
						prices[idx].innerText = (priceArr[idx] * counts[idx]).toLocaleString('ko-KR');
						
						// 현재 총 가격에서
						var cuurrentPrice = parseInt(totalPrice.innerText.replace(/,/g, ''), 10);
						// 해당 인덱스의 가격을 더함
						totalPrice.innerText = (cuurrentPrice + priceArr[idx]).toLocaleString('ko-KR');
					}
					upDownTotalNums[idx].innerText = counts[idx];
					
					// 개당 가격에 플러스된 count 만큼 곱함
					
					totalCount.innerText = count;
				}
			})
			
			minusBtns.forEach((btn, idx) => {
				
				btn.onclick = function() {
					// 배열을 통해 버튼 갯수만큼 상품개수를 따로 관리
					var counts = Array.from({ length: minusBtns.length }, () => upDownTotalNums[idx].innerText);
					
					var prices = document.querySelectorAll('.fishPrice');
					var price = parseInt('${dto.gijang_SaleBoard_Price}'.replace(/,/g, ''), 10);
					var priceOne = price + value;	// 개당 가격
					
					let classLength = document.getElementsByClassName('sizePrice').length;
					if(counts[idx] > 1 && count > classLength) {
						counts[idx]--;
						count--;
						
						// 현재 가격에서
						var fishPrice = parseInt(prices[idx].innerText.replace(/,/g, ''), 10);
						// 개당 가격을 뺀 값을 넣음
						prices[idx].innerText = (fishPrice - priceArr[idx]).toLocaleString('ko-KR');
						
						// 현재 총 가격에서
						var currentPrice = parseInt(totalPrice.innerText.replace(/,/g, ''), 10);
						// 클릭한 인덱스의 가격을 뺀 값을 대입
						totalPrice.innerText = (currentPrice - priceArr[idx]).toLocaleString('ko-KR');
						
					}
					upDownTotalNums[idx].innerText = counts[idx];
					
					totalCount.innerText = count;
				}
			})
			
			deleteBtns.forEach((btn, idx) => {
				var sizePrices = document.querySelectorAll('.sizePrice');
				var fishPrices = document.querySelectorAll('.fishPrice');
				var upDownTotalNums = document.querySelectorAll('.upDownTotalNum');
				
				btn.onclick = function() {
					var fishPrice = parseInt(fishPrices[idx].innerText.replaceAll(',', ''), 10);
					var upDownTotalNum = parseInt(upDownTotalNums[idx].innerText, 10);
					
					var currentCount = parseInt(totalCount.innerText, 10);
					var currentPrice = parseInt(totalPrice.innerText.replace(/,/g, ''), 10);
					
					totalCount.innerText = currentCount - upDownTotalNum;
					totalPrice.innerText = (currentPrice - fishPrice).toLocaleString('ko-KR');
					count = count - upDownTotalNum;
					
					sizePrices[idx].remove();
				}
			})
		}
		totalCount.innerText = count;
	}
	
	const productBuyBtn = document.getElementById('productBuyBtn');
	const paymentModal = document.getElementById('paymentModal');
	
	productBuyBtn.onclick = function() {
		const user = '${user}';
		if(user == '') {
			alert('로그인을 해주세요.');
			location.href = '${cpath}/member/login';
		}
		else {
			var paymentProducts = document.querySelectorAll('.paymentProduct');
			if(paymentProducts.length > 0) {
				paymentProducts.forEach((paymentProduct, idx) => {
					paymentProduct.remove();
				})
			}
			
			var totalCountPrice = document.querySelector('.totalCountPrice');
			if(totalCountPrice != null) {
				totalCountPrice.remove();
			}
			
			const sizePrice = document.querySelectorAll('.sizePrice');
			if(sizePrice.length == 0) {
				alert('상품을 선택해주세요.')
				return;
			}
			else {
				paymentModal.showModal();
				
				const productCheck = document.querySelector('.productCheck');
				
				var fishSizes = document.querySelectorAll('.fishSize');
				var upDownTotalNums = document.querySelectorAll('.upDownTotalNum');
				var fishPrices = document.querySelectorAll('.fishPrice');
				
				for(let i = 0; i < sizePrice.length; i++) {
					const paymentProductDiv = document.createElement('div');
					paymentProductDiv.className = 'paymentProduct';
					
					const fishSizeP = document.createElement('p');
					fishSizeP.innerText = fishSizes[i].innerText;
					
					const upDownTotalNumP = document.createElement('p');
					upDownTotalNumP.innerText = upDownTotalNums[i].innerText + '개';
					
					const fishPriceP = document.createElement('p');
					fishPriceP.innerText = fishPrices[i].innerText + '원';
					
					paymentProductDiv.appendChild(fishSizeP);
					paymentProductDiv.appendChild(upDownTotalNumP);
					paymentProductDiv.appendChild(fishPriceP);
					
					productCheck.appendChild(paymentProductDiv);
				}
	
				var totalCount = document.querySelector('.totalCount');
				var totalPrice = document.querySelector('.totalPrice');
				
				const totalCountPriceDiv = document.createElement('div');
				totalCountPriceDiv.className = 'totalCountPrice';
				
				const totalCountP = document.createElement('p');
				totalCountP.innerText = '총수량    ' + totalCount.innerText + '개';
				
				const totalPriceP = document.createElement('p');
				totalPriceP.innerText = totalPrice.innerText + '원';
				
				totalCountPriceDiv.appendChild(totalCountP);
				totalCountPriceDiv.appendChild(totalPriceP);
				
				productCheck.appendChild(totalCountPriceDiv);
			}
			
			
		}
	}
	
	$('.closeModal').click(function() {
		paymentModal.close();
	})
	
	function isChecked() {
		const paymentCheckBox = document.getElementById('paymentCheckBox');
		const kakaoPayBtn = document.getElementById('kakaoPayBtn');
		if(paymentCheckBox.checked == false) {
			kakaoPayBtn.disabled = 'disabled';
		}
		else {
			kakaoPayBtn.disabled = '';
		}
	}
	
	$('#kakaoPayBtn').click(function() {
		var item_name = '${dto.gijang_SaleBoard_Title}'.replace('[', '').replace(']', '').replace(':', '').replace('[', '').replace(']', '');
		var quantity = parseInt(document.querySelector('.totalCount').innerText);
		var totalPrice = document.querySelector('.totalPrice').innerText;
		var total_amount = parseInt(totalPrice.replace(',', ''));
		var userId = '${user.gijang_Member_UserId}';
		$.ajax({
			url:'${cpath}/gijangAjumma/kakaopayment?item_name=' + item_name + '&quantity=' + quantity + '&total_amount=' + total_amount 
					+ '&partner_user_id=' + userId,
			dataType:'json',
			success:function(data) {
				var paymentPCURL = data.next_redirect_pc_url
				window.open(paymentPCURL);
				
				// 연결 성공했다면 일단 db에 삽입
				var fishSizes = document.querySelectorAll('.fishSize');
				fishSizes.forEach((fishSize, i) => {
					(function(i) {
						var item_name = '${dto.gijang_SaleBoard_Title}'.replace('[', '').replace(']', '').replace(':', '').replace('[', '').replace(']', '');
						fishSize = fishSizes[i].innerText.replace('~', 'from').replace('+', 'plus').replace('(', '').replace(')', '');
						var upDownTotalNums = document.querySelectorAll('.upDownTotalNum');
						var upDownTotalNum = parseInt(upDownTotalNums[i].innerText);
						var fishPrices = document.querySelectorAll('.fishPrice');
						var fishPrice = fishPrices[i].innerText;
						var totalPrice = document.querySelector('.totalPrice').innerText;
						
						var idx = '${dto.gijang_SaleBoard_Idx}';
						
						$.ajax({
							type: 'get',
							url: '${cpath}/order/orderInsert?productName=' + item_name + '&productDetailName=' + fishSize 
									+ '&productDetailPrice=' + fishPrice 
									+ '&productDetailCount=' + upDownTotalNum 
									+ '&totalPrice=' + totalPrice
									+ '&saleBoardIdx=' + idx,
							async: false,
							success:function(result) {
								
							}
						})
					})(i);
				})
			},
			error:function(error) {
				alert(error);
			}
		
		});
	});
	
	// 비동기 찜목록 추가
	$('#wishListAddBtn').on('click', function() {
		const user = '${user}';
		if(user == '') {
			alert('로그인을 해주세요');
			location.href = '${cpath}/member/login';
		}
		else {
			let idx = '${dto.gijang_SaleBoard_Idx}';
			let userId = '${user.gijang_Member_UserId}';
			$.ajax({
				type: 'get',
				url: '${cpath}/member/addWishList?saleBoardIdx=' + idx 
						+ '&userId=' + userId,
				success:function(res) {
					
					if(res == 'true') {
						alert('찜 목록에 추가 되었습니다.')
					}
					else {
						alert('이미 찜 목록에 추가 되어있습니다.')
					}
				}
			})
		}
	})
</script>

</body>
</html>