<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 테스트</title>
	<script type="text/javascript"> <%-- style과 비슷함 --%>
		function hello() {
			alert("경고!")
		}
		
		function checkForm() {
			if(document.loginForm.id.value == ""){
				alert("아이디는 필수 입력값입니다!!")	
				document.loginForm.id.focus();
				return false;
			} else if(document.loginForm.pw.value == ""){
				alert("비밀번호는 필수 입력값입니다!!")
				document.loginForm.pw.focus();
				return false;
			} else if(document.loginForm.id.value.length < 4) {
				alert("아이디는 4글자 이상이어야합니다!!")
				document.loginForm.id.focus();
				return false;
			} else if(document.loginForm.pw.value.length < 4) {
				alert("비밀번호는 4글자 이상이어야합니다!!")
				document.loginForm.pw.focus();
				return false;
			} else {
				return true;
			}		
		}
	</script>
</head>
<body>
	<form action="" name="loginForm">
		아이디: <input type="text" name="id"><br><br>
		비밀번호 : <input type="password" name="pw"><br><br>
		<input type="submit" value="로그인" onclick="checkForm()"> 
	</form>	
</body>
</html>