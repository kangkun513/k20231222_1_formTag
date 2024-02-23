<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- html 주석: 지정 → ctrl + shift+ / , 해제: ctrl + shift + \ a -->
<%-- jsp 요소는 html 주석으로 주석 설정이 되지 않음 --%>

<%--
	<%@ ~ %>: 디렉티브 → 대부분 자동으로 입력됨, import 같이 설정에 관련된 정보를 적음
	<%! ~ %>: 선언부 → 프로그램에서 사용할 변수나 메소드를 정의 → java 파일로 뽑아내서 사용
	<%= ~ %>: 표현식 → 변수에 저장된 결과나 연산 결과를 출력 → EL(${ ~ })로 대체해서 사용
	<% ~ %>: 스크립트릿 → 일반적인 jsp 코드를 적는 부분 → jstl로 대체해서 사용
--%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이것이 제목</title>
</head>
<body>

<!-- 
	html은 spacebar를 여러번 연속해서 입력해도 1칸밖에 떨어지지 않고 enter 키를 입력해도 줄이 변경되지 않음
	2칸 이상 연속해서 띄우려면 &nbsp;를 띄울 칸의 개수만큼 입력하고 줄을 바꾸려면 <br> 태그 사용
-->

myInfo.jsp<br>입니다<br><br><br><br>안녕

<%
	out.println("<br>출력할 내용<br>");
	out.println(application.getRealPath("/"));
%>

<!-- 
	현재 페이지에 입력한 데이터를 특정 페이지로 전송하려면 전송할 데이터를 입력하는 코드를
	<form> ~ </form> 사이에 작성해야 함
	action 속성은 전송 버튼(type="submit")이 클릭되면 form에 입력한 데이터가 전송될 jsp 페이지 이름을 입력함
	아무 것도 입력하지 않거나 "?"만 입력한다면 현재 페이지를 다시 요청
	method 속성은 action 페이지로 데이터가 전송될 때 정보가 url(주소) 창에 표시되는 여부를 지정
	method 속성의 기본값은 "GET"이고 "GET" 방식은 전송되는 데이터가 url 창에 표시되고
	"POST"로 변경하면 url 창에 표시되지 않음
-->

<br><br>
<form action="myInfoOK.jsp" method="post">

	이름: <input type="text" name="name"><br>
	ID: <input type="text" name="id"><br>

	<input type="submit" value="정보 보기">

</form>

</body>
</html>




