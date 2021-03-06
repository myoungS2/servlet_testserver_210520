<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP quiz02(GET Method)</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<%
		String type = request.getParameter("type");
		Date now = new Date();
		SimpleDateFormat sdf = null; // null을 가진 상황
		
		if (type.equals("time")) {
			// 시간 출력
			sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
		} else {
		 	// 날짜 출력
		 	sdf = new SimpleDateFormat("현재 날짜는 yyyy년 MM월 dd일 입니다.");
		} 
		
		// 변수에 결과물 담기
		String result = sdf.format(now); // now안에 우리가 지정한 포멧이 들어있음!
	%>
	
	<div class="container">
		<h1><%= result %></h1>
	</div>
	
</body>
</html>