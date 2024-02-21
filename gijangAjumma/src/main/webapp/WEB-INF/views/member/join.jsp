<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div id="join_form" class="frame">
	<h1>회원가입</h1>
	<form method="POST">
		<p><input type="text" name="gijang_Member_UserName" placeholder="이름" autofocus required></p>
		<p>
			<input type="text" id="gijang_Member_UserId" name="gijang_Member_UserId" placeholder="아이디" required>
			<input type="button" onclick="duplicationIdCheck()" value="중복확인">
		</p>
		<p><label id="duplicationCheck"></label></p>
		<p><input type="password" id="pw1" name="gijang_Member_Userpw" placeholder="비밀번호" required></p>
		<p><input type="password" id="pw2" placeholder="비밀번호확인" required></p>
		<p><label id="passwordCheck"></label></p>
		<p>
			<input type="email" id="gijang_Member_Email" name="gijang_Member_Email" placeholder="이메일" required>
			<input type="button" onclick="emailAuth()" value="이메일 인증">
		</p>
		<p><input type="text" id="authCode" placeholder="인증번호 6자리를 입력해주세요." maxlength="6" disabled="disabled"></p>
		<p><label id="emailCheck"></label></p>
		<p><input type="text" name="gijang_Member_Pnum" placeholder="휴대폰번호" required></p>
		<p><input type="text" name="gijang_Member_Birth" placeholder="생년월일 8자리" required></p>
		<input type="text" name="gijang_Member_Zipcode" id="gijang_Member_Zipcode" placeholder="우편번호" required>
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" name="gijang_Member_Address" id="gijang_Member_Address" placeholder="주소" required><br>
		<input type="text" name="gijang_Member_DetailAddress" id="gijang_Member_DetailAddress" placeholder="상세주소" required>
		<input type="text" name="gijang_Member_ExtraAddress" id="gijang_Member_ExtraAddress" placeholder="참고항목">
		<p><button id="joinBtn" type="submit" disabled="disabled">회원가입</button></p>
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
    
    const userTextBox = document.getElementById('gijang_Member_UserId');
    const duplicationCheck = document.getElementById('duplicationCheck');
    const joinBtn = document.getElementById('joinBtn');
    
   	
   	function duplicationIdCheck() {
   		var textUserId = $('#gijang_Member_UserId').val();
   		
    	$.ajax({
    		type: "get",
    		url: `${cpath}/member/duplicationCheck?textUserId=` + textUserId
    	}).done((res) => {
    		const userid = res.gijang_Member_UserId;
//     		if(textUserId == '') {
//     			duplicationCheck.style.color = 'red';
//     			duplicationCheck.innerText = '아이디를 입력 후 중복확인을 눌러주세요.';
//     			joinBtn.disabled = 'disabled';
//     			return
//     		}
    		if(res == '') {
    			duplicationCheck.style.color = 'blue';
    			duplicationCheck.innerText = '사용 가능한 아이디입니다.';
    		}
    		if(textUserId == userid) {
    			duplicationCheck.style.color = 'red';
    			duplicationCheck.innerText = '이미 사용중인 아이디입니다.';
    			joinBtn.disabled = 'disabled';
    			joinBtn.style.backgroundColor = '#f4f4f6';
    			$('#joinBtn').hover(function() {
    				$(this).css('backgroundColor', '#f4f4f6');
    			}, function() {
    				$(this).css('backgroundColor', '#f4f4f6');
    			})
    		}
    		if(textUserId.length < 4) {
    			duplicationCheck.style.color = 'red';
    			duplicationCheck.innerText = '아이디는 4글자 이상만 가능합니다.';
    			joinBtn.disabled = 'disabled';
    			joinBtn.style.backgroundColor = '#f4f4f6';
    			$('#joinBtn').hover(function() {
    				$(this).css('backgroundColor', '#f4f4f6');
    			}, function() {
    				$(this).css('backgroundColor', '#f4f4f6');
    			})
    		}
    	})
    }

	var pw1 = document.getElementById('pw1');
	var pw2 = document.getElementById('pw2');
	const passwordCheck = document.getElementById('passwordCheck');
	
	pw1.addEventListener('focusout', function() {
		if(pw1.value.length < 4) {
   			passwordCheck.style.color = 'red';
   			passwordCheck.innerText = '비밀번호는 4자리 이상만 가능합니다';
   			joinBtn.disabled = 'disabled';
    		joinBtn.style.backgroundColor = '#f4f4f6';
    		$('#joinBtn').hover(function() {
				$(this).css('backgroundColor', '#f4f4f6');
			}, function() {
				$(this).css('backgroundColor', '#f4f4f6');
			})
   		}
		else { 
			if(pw1.value.length > 3 && pw2.value.length > 3) {
				if(pw1.value == pw2.value) {
		   			passwordCheck.style.color = 'blue';
		   			passwordCheck.innerText = '비밀번호가 일치합니다';
		   		}
		   		else {
		   			passwordCheck.style.color = 'red';
		   			passwordCheck.innerText = '비밀번호가 일치 하지 않습니다.';
		    		joinBtn.disabled = 'disabled';
		    		joinBtn.style.backgroundColor = '#f4f4f6';
		    		$('#joinBtn').hover(function() {
						$(this).css('backgroundColor', '#f4f4f6');
					}, function() {
						$(this).css('backgroundColor', '#f4f4f6');
					})
		   		}
			}
			else {
				if(pw2.value != '') {
					passwordCheck.style.color = 'red';
		   			passwordCheck.innerText = '비밀번호는 4자리 이상만 가능합니다';
		   			joinBtn.disabled = 'disabled';
		    		joinBtn.style.backgroundColor = '#f4f4f6';
		    		$('#joinBtn').hover(function() {
						$(this).css('backgroundColor', '#f4f4f6');
					}, function() {
						$(this).css('backgroundColor', '#f4f4f6');
					})
				}
			}
		}
   	})
	
   	pw2.addEventListener('focusout', function() {
   		if(pw1.value.length > 3 && pw2.value.length > 3) {
			if(pw1.value == pw2.value) {
	   			passwordCheck.style.color = 'blue';
	   			passwordCheck.innerText = '비밀번호가 일치합니다';
	   		}
	   		else {
	   			passwordCheck.style.color = 'red';
	   			passwordCheck.innerText = '비밀번호가 일치 하지 않습니다.';
	    		joinBtn.disabled = 'disabled';
	    		joinBtn.style.backgroundColor = '#f4f4f6';
	    		$('#joinBtn').hover(function() {
					$(this).css('backgroundColor', '#f4f4f6');
				}, function() {
					$(this).css('backgroundColor', '#f4f4f6');
				})
	   		}
   		}
   		else {
   			if(pw1.value.length < 4) {
   				passwordCheck.style.color = 'red';
	   			passwordCheck.innerText = '비밀번호는 4자리 이상만 가능합니다';
	   			joinBtn.disabled = 'disabled';
	    		joinBtn.style.backgroundColor = '#f4f4f6';
	    		$('#joinBtn').hover(function() {
					$(this).css('backgroundColor', '#f4f4f6');
				}, function() {
					$(this).css('backgroundColor', '#f4f4f6');
				})
   			}
   			else {
	   			passwordCheck.style.color = 'red';
	   			passwordCheck.innerText = '비밀번호가 일치 하지 않습니다.';
	   			joinBtn.disabled = 'disabled';
	    		joinBtn.style.backgroundColor = '#f4f4f6';
	    		$('#joinBtn').hover(function() {
					$(this).css('backgroundColor', '#f4f4f6');
				}, function() {
					$(this).css('backgroundColor', '#f4f4f6');
				})
   			}
   		}
   	})
   	
   	var code = '';
	// 인증번호 입력 칸
	var authCode = document.getElementById('authCode');
	
	// 이메일 인증코드 ajax
   	function emailAuth() {
		// 사용자가 입력한 이메일
		var email = document.getElementById('gijang_Member_Email').value;
		
		$.ajax({
			type: "get",
			url: `${cpath}/email/emailAuth?email=` + email
		}).done((res) => {
			console.log(res);
			authCode.disabled = '';
			code = res;
			alert('인증 코드가 입력하신 이메일로 전송 되었습니다.');
			authCode.focus();
		});
	};
	
	// 일치하는지 보여주는 label
	var emailCheck = document.getElementById('emailCheck');
	
	// 이메일 인증코드 확인
	authCode.addEventListener('focusout', function() {
		if(authCode.value == code) {
			emailCheck.style.color = 'blue';
			emailCheck.innerText = '인증되었습니다.';
			joinBtn.style.backgroundColor = '#83ccc5';
			joinBtn.disabled = '';
			$('#joinBtn').hover(function() {
				$(this).css('backgroundColor', '#364ea8');
				$(this).css('cursor', 'pointer');
			}, function() {
				$(this).css('backgroundColor', '#83ccc5');
			})
		}
		else {
			emailCheck.style.color = 'red';
			emailCheck.innerText = '인증번호가 일치하지 않습니다.';
    		joinBtn.disabled = 'disabled';
  			joinBtn.style.backgroundColor = '#f4f4f6';
  			$('#joinBtn').hover(function() {
				$(this).css('backgroundColor', '#f4f4f6');
			}, function() {
				$(this).css('backgroundColor', '#f4f4f6');
			})
		}
	})
	
</script>
</body>
</html>