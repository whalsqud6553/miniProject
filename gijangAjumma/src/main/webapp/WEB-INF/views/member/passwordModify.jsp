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

<div class="frame">
	<h1 style="text-align: center; color: #ccc;">비밀번호 수정</h1>
	<div class="pwModifyForm">
		<form method="POST">
			<p><input id="modifyPassword" name="password" type="password" placeholder="비밀번호"></p>
			<p><input id="modifyPasswordCheck" type="password" placeholder="비밀번호확인"></p>
			<p><label id="modifyPasswordMsg"></label></p>
			<p><input id="modifyPasswordBtn" type="submit" value="비밀번호 변경" disabled="disabled"></p>
		</form>
	</div>
</div>

<footer>
	<h3>footer</h3>
</footer>

<script>
	let pw1 = document.getElementById('modifyPassword');
	let pw2 = document.getElementById('modifyPasswordCheck');
	let modifyPasswordMsg = document.getElementById('modifyPasswordMsg');
	let modifyPasswordBtn = document.getElementById('modifyPasswordBtn');
	
	pw1.addEventListener('focusout', function() {
		if(pw1.value.length < 4) {
			modifyPasswordMsg.style.color = 'red';
			modifyPasswordMsg.innerText = '비밀번호는 4자리 이상만 가능합니다.';
			modifyPasswordBtn.disabled = 'disabled';
			modifyPasswordBtn.style.backgroundColor = '#f4f4f6';
			$('#modifyPasswordBtn').hover(function() {
				$(this).css('backgroundColor', '#f4f4f6');
			}, function() {
				$(this).css('backgroundColor', '#f4f4f6');
			})
		}
		else {
			if(pw1.value.length >= 4 && pw2.value.length >= 4) {
				if(pw1.value == pw2.value) {
					modifyPasswordMsg.style.color = 'blue';
					modifyPasswordMsg.innerText = '비밀번호가 일치합니다';
					modifyPasswordBtn.disabled = '';
					modifyPasswordBtn.style.backgroundColor = '#83ccc5';
					$('#modifyPasswordBtn').hover(function() {
						$(this).css('backgroundColor', '#364ea8');
					}, function() {
						$(this).css('backgroundColor', '#83ccc5');
					})
				}
				else {
					modifyPasswordMsg.style.color = 'red';
					modifyPasswordMsg.innerText = '비밀번호가 일치하지 않습니다';
					modifyPasswordBtn.disabled = 'disabled';
					modifyPasswordBtn.style.backgroundColor = '#f4f4f6';
					$('#modifyPasswordBtn').hover(function() {
						$(this).css('backgroundColor', '#f4f4f6');
					}, function() {
						$(this).css('backgroundColor', '#f4f4f6');
					})
				}
			}
		}
	})
	
	pw2.addEventListener('focusout', function() {
		if(pw1.value.length >= 4 && pw2.value.length >= 4) {
			if(pw1.value == pw2.value) {
				modifyPasswordMsg.style.color = 'blue';
				modifyPasswordMsg.innerText = '비밀번호가 일치합니다';
				modifyPasswordBtn.disabled = '';
				modifyPasswordBtn.style.backgroundColor = '#83ccc5';
				$('#modifyPasswordBtn').hover(function() {
					$(this).css('backgroundColor', '#364ea8');
				}, function() {
					$(this).css('backgroundColor', '#83ccc5');
				})
			}
			else {
				modifyPasswordMsg.style.color = 'red';
				modifyPasswordMsg.innerText = '비밀번호가 일치하지 않습니다';
				modifyPasswordBtn.disabled = 'disabled';
				modifyPasswordBtn.style.backgroundColor = '#f4f4f6';
				$('#modifyPasswordBtn').hover(function() {
					$(this).css('backgroundColor', '#f4f4f6');
				}, function() {
					$(this).css('backgroundColor', '#f4f4f6');
				})
			}
		}
		else {
			modifyPasswordMsg.style.color = 'red';
			modifyPasswordMsg.innerText = '비밀번호는 4자리 이상만 가능합니다';
			modifyPasswordBtn.disabled = 'disabled';
			modifyPasswordBtn.style.backgroundColor = '#f4f4f6';
			$('#modifyPasswordBtn').hover(function() {
				$(this).css('backgroundColor', '#f4f4f6');
			}, function() {
				$(this).css('backgroundColor', '#f4f4f6');
			})
		}
	})
	
</script>

</body>
</html>