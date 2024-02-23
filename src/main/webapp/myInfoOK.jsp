<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반갑다</title>
</head>
<body>
	myInfoOK.jsp<br>입니다
	
<%
//	request.getParameter() 메소드로 이전 페이지에서 submit 버튼이 클릭되면 넘어오는 데이터를 받음
//	이전 페이지에서 넘어오는 데이터는 무조건 문자열 형태로 넘어옴
	String name = request.getParameter("name");
	out.println("<br><br><br><br>" + name + "&nbsp;님 안녕하세요<br>");

%>
	
</body>
</html>