<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 요소</title>
</head>
<body>
	<!-- HTML주석 : 소스보기에서 보임 -->
	<%-- JSP주석 : 소스보기에서 보이지 않음(보안) --%>
	
<%-- main메소드(java) 개념 => 무조건 수행! --%>	

<% 
	// 스크립틀릿(Scriptlet) : 자바코드를 작성할 수 있는 영역
	// 반복문
	int sum = 0;
	for (int i = 1; i <= 10; i++){
		sum += i;
	}
	
%>

<strong>합계:</strong>
<input type="text" value="<%= sum %>"> <%-- %= : 변수 값, 메소드 리턴값  출력 --%> 
<br>


<%-- 클래스(객체) 개념 --%>
<%-- 선언문 --%>

<%!
	// filed
	private int num = 100;

	// method
	public String getHelloWorld(){
		return "hello world!!!";
	}
%>

<%= getHelloWorld() %>
<br>
<%= num + 200 %> <%-- 간단한 연산도 가능 --%>



</body>
</html>