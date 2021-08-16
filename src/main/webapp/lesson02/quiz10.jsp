<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3월 달력</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</head>
<body>
	<%	
	 	// Calendar 객체 생성 (현재 날짜, 시간정보 유)
		Calendar calendar = Calendar.getInstance();
		calendar.add(calendar.DATE, -166); // 3월 1일로 날짜 설정
		// calendar -> 날짜(일) + 마지막날짜
		
		// 날짜포멧
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM");
		String cHeader = sdf1.format(calendar.getTime());
	%>
	<div class="container">
		<h1 class="text-center"><%= cHeader %></h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
				<%
				// 마지막 날짜
				int lastDate = calendar.getActualMaximum(calendar.DATE);
				
				// 날짜 찍기
				for (int i = 1; i <= lastDate; i++) {
					out.print("<tr class=\"display-4\">");	
					// 일 ~ 토 -> 줄바꿈 + (날짜 여러번 찍히기 x, 요일과 날짜 맞는지 체크) ㅜㅜㅜㅜㅜ
					for (int j = 1; j <= 7; j++){
						out.print("<td>" + i +"</td>");
						if (j == 7){
							out.println();
						}
				%>
					
				<% 
						}
					}
				%>	
			</tbody>
		</table>
	</div>
</body>

</html>