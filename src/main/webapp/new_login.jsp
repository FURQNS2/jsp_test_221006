<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원로그인</title>
</head>
<body>
	<h3>회원로그인</h3>
	<hr>
	<form action="loginProcess.jsp" method="post">  <%-- 입력한 정보를 전달받기로한 페이지 --%>
		아이디 : <input type="text" name="memberId"><br>
		비밀번호 : <input type="password" name="memberPw"><br>
		<input type="submit" value="로그인"> <input type="reset" value="취소">
		
	</form>
</body>
</html>