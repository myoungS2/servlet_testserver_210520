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
</head>
<body>
	<div id="wrap" class="container">
		<header class="bg-danger text-white">
			<h3>HONG당무 마켓</h3>
		</header>
		<nav  class="d-flex bg-danger text-white">
			<ul class="nav nav-fill">
				<li class="nav-item font-weight-bold"><a href="#" class="nav-link">리스트</a></li>
				<li class="nav-item font-weight-bold"><a href="#" class="nav-link">물건올리기</a></li>
				<li class="nav-item font-weight-bold"><a href="#" class="nav-link">마이페이지</a></li>
			</ul>
		</nav>
		<%
			// DB 연결
			MysqlService mysqlService = MysqlService.getInstance();
			mysqlService.connection();
			
			// select 쿼리
			String selectQuery1 = "select * from `seller` where ";
			ResultSet result1 = mysqlService.select(selectQuery1);
			String selectQuery2 = "select * from `used_goods` order by `id` DESC";
			ResultSet result2 = mysqlService.select(selectQuery2);
		%>
		<section class="contents">
			<article class="d-flex flex-wrap justify-content-around">
				<%
					while (result2.next()) { 
						while (result1.next()){
				%>
					<div>
						<%
							if(result2.getString("picture") != null) {
							
						%>
						<img src="<%= result2.getString("picture") %>" alt="판매사진">
						<%
							} else {
								
						%>
						<img src="https://img.baro.company/BARO/Images/382d56cb-c6af-4422-b6fc-82d021cd2138.png" alt="판매사진">
						<%
							}
						%>
						<div class="font-weight-bold"><%= result2.getString("title") %></div>
						<div class="text-secondary"><small><%= result2.getInt("price") %>원</small></div>
						<div class="text-danger"><%= result2.getString("sellerId") %></div>
					</div>
				<%
						}
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