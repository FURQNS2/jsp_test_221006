<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% //자바 진입
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("memberId"); //리퀘스트 객체 안의 파라미터 값을 가져옴  
		String pw = request.getParameter("memberPw"); //파라미터는 1개의 값만 가져올 수 있다.
		
		String name = request.getParameter("name");
		
		String telecom = request.getParameter("telecomSelect");
		
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		
		String gender = request.getParameter("gender");
		
		String hobby[] = request.getParameterValues("hobby"); //빈 배열만들어서 배열을 받아줌(다중선택이 가능할 때 사용)
		
		String intro = request.getParameter("intro");
		
		String money = request.getParameter("money");
		
		
	%> <%--자바 탈출--%>
	
	<h3>회원 가입 정보 확인</h3>
	<hr>
	- 아이디: <%= id %> <br><br>
	- 비밀번호: <%=pw %> <br><br>
	- 이름: <%=name %> <br><br>
	- 전화번호: <%=telecom %> <%=phone1 %>-<%=phone2 %>-<%=phone3 %> <br><br>
	- 성별: <%=gender %><br><br>
	- 취미: 
		<%	//자바 시작  
			if (hobby == null){
				out.println("취미없음");
			}
			else {
				for(String hobbys: hobby){
				out.println(hobbys);
			 }
			}
		%>
		<br><br>
	- 본인소개 : <%=intro %><br><br>		
		<input type="button" value="정보확인">
		<input type="hidden">  <%-- 중요정보가 화면에 보이지 않게 만들어 줌 --%>		 
	- 회비 : <%=money %>
	
</body>
</html>