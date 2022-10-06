<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h3>회원가입</h3>
	<hr>
	<form action="joinok.jsp" method="post"> <%-- 정보 숨기기--%>
		**아이디 : <input type="text" name="memberId" required="required" autofocus="autofocus"><br><br>
		**비밀번호 : <input type="password" name="memberPw"><br><br>
		**이름: <input type="text" name="name"><br><br>
		**전화번호: 
		<select name="telecomSelect">
			<option value="telecomSelect">선택</option>
			<option value="skt">SKT</option>
			<option value="kt">KT</option>
			<option value="lgu+">LGU+</option>
		</select> 
		<input type="text" name="phone1" size="3" maxlength="3"> -
		<input type="text" name="phone2" size="4" maxlength="4"> -
		<input type="text" name="phone3" size="4" maxlength="3"><br><br>
		**성별 : 
		<input type="radio" name="gender" value="남자" checked="checked">남
		<input type="radio" name="gender" value="여자">여 <br><br>
		**취미:
		<input type="checkbox" name="hobby" value="운동" checked="checked">운동
		<input type="checkbox" name="hobby" value="독서">독서
		<input type="checkbox" name="hobby" value="영화감상">영화감상
		<input type="checkbox" name="hobby" value="게임">게임 <br><br>
		** 본인 소개 : <br>
		<textarea rows="5" cols="50" name="intro"></textarea>
		<br><br>
		<input type="text" name="money" value="10000" readonly disabled="disabled"> <%-- readonly(리드온리: 읽기만 가능)설정은 건드릴 수 없음--%>
		<br><br>		
		<input type="submit" value="가입완료"> 
		<input type="reset" value="재작성">
		
	</form>
</body>
</html>