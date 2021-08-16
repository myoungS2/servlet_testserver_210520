<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
		<%	
		Calendar today = Calendar.getInstance();
		// 6월로 today를 셋팅
		// today.add(Calendar.MONTH, -2); 방법 1
		today.set(Calendar.MONTH, Calendar.JUNE); // 방법 2
		
		// 제목을 위한 sdf
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		String title = sdf.format(today.getTime());
		
		// 월의 첫날 구하기
		Calendar firstDateOfMonth = Calendar.getInstance();
		firstDateOfMonth.set(Calendar.MONTH, Calendar.JUNE);
		firstDateOfMonth.set(Calendar.DAY_OF_MONTH, 1); // 월의 첫번째 날짜로 변경
		
		// 일:1, 월:2, 화:3, 수:4, 목:5, 금:6, 토:7 요일에 대한 정보는 숫자로 넘어옴
		int firstDayOfMonth = firstDateOfMonth.get(Calendar.DAY_OF_WEEK); // 6월 1일 -> 화요일 = 3 
		// out.print("###" + firstDayOfMonth);
		
		// 월의 마지막 날짜 구하기
		int lastDateOfMonth = firstDateOfMonth.getActualMaximum(Calendar.DAY_OF_MONTH);
		
		// 셋팅 된 첫날부터 마지막날짜까지 루트를 돌고 끝나느 알고리즘!
		
		%>
		<h1 class="text-center"><%= title %></h1>
		<table class="table text-center mt-3">
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
				int day = 1 - (firstDayOfMonth -1); // 양수가 되는 1일부터 출력을 시작 그전까지는 비어있는 td를 출력
				// 총 몇주인지 (6주)
				for (int i = 0; i < 6; i++){
					out.print("<tr>");
					//  요일
					for (int j = 0; j < 7; j++) {
						out.print("<td>");
						// 양수여서 날짜가 출력되는 조건
						if (day > 0){
							out.print(day);
						}
						out.print("</td");
						
						day ++; // day는 출력되고 난 후 증가될 수 있도록
						
						// 마지막 날짜 열 종료
						if (day > lastDateOfMonth) {
							break;
						}
					}
					// 마지막 날짜 행 종료
					if (day > lastDateOfMonth) {
						break;
					}
					out.print("</tr>");
				
 				}
				
			%>	
			</tbody>
		</table>
	</div>
</body>

</html>