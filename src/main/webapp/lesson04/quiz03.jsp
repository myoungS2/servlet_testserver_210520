<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="common.MysqlService"%>   
<%@page import="java.sql.ResultSet"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HONG당무 마켓</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" type="text/css" href="quiz03_style.css">
</head>
<body>
	<div id="wrap" class="container">
		<header>
			<div class="d-flex justify-content-center align-items-center">
			<h3>HONG당무 마켓</h3>
			</div>
		</header>
		<nav class="d-flex">
			<ul class="nav nav-fill w-100 justify-content-around">
				<li class="nav-item font-weight-bold"><a href="quiz03.jsp?list=리스트" class="nav-link">리스트</a></li>
				<li class="nav-item font-weight-bold"><a href="quiz03_1.jsp" class="nav-link">물건올리기</a></li>
				<li class="nav-item font-weight-bold"><a href="#" class="nav-link">마이페이지</a></li>
			</ul>
		</nav>
		<%
			// DB 연결
			MysqlService mysqlService = MysqlService.getInstance();
			mysqlService.connection();
			
			// select 쿼리
			String selectQuery = "select seller.*, used_goods.* from seller join used_goods on seller.id= used_goods.sellerId order by seller.id";
			ResultSet result = mysqlService.select(selectQuery);
		%>
		<section class="contents">
			<article class="d-flex flex-wrap justify-content-around">
				<%
					while (result.next()) { 
						// while (result1.next()){ 중첩x join문 사용해서 한번에 가져오기!
				%>
					<div class="width:300px height:100px">
						<%
							if(result.getString("picture") != null) {
							
						%>
						<img src="<%= result.getString("picture") %>" alt="판매사진" width="400px" height="250px" >
						<%
							} else {
								
						%>
						<img src="https://img.baro.company/BARO/Images/382d56cb-c6af-4422-b6fc-82d021cd2138.png" alt="판매사진" width="300px" height="100px" >
						<%
							}
						%>
						<div class="font-weight-bold"><%= result.getString("title") %></div>
						<div class="text-secondary"><small><%= result.getInt("price") %>원</small></div>
						<div class="text-danger"><%= result.getString("nickname") %></div>
					</div>
				<%
						// }
					}
				// DB 해제
				mysqlService.disconnect();
				
				%>	
			</article>
		</section>
		<footer class="text-center">
		<div class="text-secondary"><small>Copyright 2019. HONG All Rights Reserved.</small></div>
		</footer>
	</div>
</body>
</html>