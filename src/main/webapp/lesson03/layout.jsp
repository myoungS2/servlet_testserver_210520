<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한 페이지 레이아웃 (분할x)</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
	#wrap {width: 100%; height:1000px;}
	header {height:50px;}
	nav {height:1000px;}
	.right {height:1000px;}
	.contents {height: 90%;}
	footer{height: 10%;}
</style>


</head>
<body>
		<%-- 결과물 페이지 --%>
	<div id="wrap" class="bg-secondary">
		<header class="bg-success">
			<h2>Marondal</h2>
		</header>
		<div class="d-flex">
			<nav class="bg-info col-2">
				<ul>
					<li>메뉴1</li>
					<li>메뉴2</li>
					<li>메뉴3</li>
					<li>메뉴4</li>
				</ul>
			</nav>
			<div class="right bg-warning col-10">
				<section class="contents bg-primary">
					<img src="https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__340.jpg" alt="사진">
					<br>
					수채화 같은 가을 풍경 <br>
					추천 지역 & 호텔
				</section>
				<footer class="bg-danger">
					<address>
						Copyright © marondal 2021
					</address>
				</footer>
			</div>
		</div>
	</div>	
</body>
</html>