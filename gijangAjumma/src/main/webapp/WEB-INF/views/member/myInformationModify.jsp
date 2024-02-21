<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<script>
	const user = '${user}';
	if(user == '') {
		alert('로그인을 해주세요');
		location.href = '${cpath}/member/login';
	}
</script>

<div id="myInfoModify_form" class="frame">
	<h1>내 정보 수정</h1>
	<h3 class="pwModify"><a href="${cpath }/member/passwordModify">비밀번호 수정</a></h3>
	<form method="POST">
		<p><input type="text" name="gijang_Member_UserName" placeholder="이름" value="${dto.gijang_Member_UserName }" autofocus required></p>
		<p>
			<input type="text" id="gijang_Member_UserId" name="gijang_Member_UserId" placeholder="아이디" value="${dto.gijang_Member_UserId }" disabled>
		</p>
		<p>
			<input type="email" id="gijang_Member_Email" name="gijang_Member_Email" placeholder="이메일" value="${dto.gijang_Member_Email }" disabled>
		</p>
		<p><input type="text" name="gijang_Member_Pnum" placeholder="휴대폰번호" value="${dto.gijang_Member_Pnum }" required></p>
		<p><input type="text" name="gijang_Member_Birth" placeholder="생년월일 8자리" value="${dto.gijang_Member_Birth }" minlength="8" maxlength="8" required></p>
		<input type="text" name="gijang_Member_Zipcode" id="gijang_Member_Zipcode" value="${dto.gijang_Member_Zipcode }" placeholder="우편번호" required>
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" name="gijang_Member_Address" id="gijang_Member_Address" placeholder="주소" value="${dto.gijang_Member_Address }" required><br>
		<input type="text" name="gijang_Member_DetailAddress" id="gijang_Member_DetailAddress" placeholder="상세주소" value="${dto.gijang_Member_DetailAddress }" required>
		<input type="text" name="gijang_Member_ExtraAddress" id="gijang_Member_ExtraAddress" placeholder="참고항목" value="${dto.gijang_Member_ExtraAddress }">
		<p><button id="modifyBtn" type="submit">정보 수정</button></p>
	</form>
</div>

<footer>
	<h3>footer</h3>
</footer>

<script>

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
</script>

</body>
</html>