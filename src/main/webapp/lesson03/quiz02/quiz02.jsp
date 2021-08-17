<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
	<header class="d-flex">
		<%-- 로고영역 --%>
		<div>
			<h3 class="text-success">Melong</h3>
		</div>
		<%-- 검색영역 --%>
		<div class="d-flex">
			<input type="text" class="form-control"><button type="button" class="bg-info">검색</button>
		</div>
	</header>
		<%-- 메뉴영역 --%>	
		<nav class="d-flex font-weight-bold">
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="#" class="nav-link">멜롱챠트</a></li>
				<li class="nav-item"><a href="#" class="nav-link">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link">뮤직어워드</a></li>
			</ul>
		</nav>
		<%-- 컨텐츠 영역 --%>
		<div class="contents">
			<div>
				
			</div>
			<%-- 가수 정보 --%>
			<div class="content1 d-flex">
				<%
				// 아티스트 정보 
			    Map<String, Object> artistInfo = new HashMap<>();
			    artistInfo.put("name", "아이유");
			    artistInfo.put("debute", 2008);
			    artistInfo.put("agency", "EDAM엔터테인먼트");
			    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
				
				%>
				<div>
					<img src="<%= artistInfo.get("photo") %>" width: 50px; height:150px;>		
				</div>
				<div>
					<h2><%= artistInfo.get("name") %></h2>
					<h4><%= artistInfo.get("agency") %></h4>
					<h4><%= artistInfo.get("debute") %>데뷔</h4>
				</div>
			</div>
			<%-- 곡 목록 --%>
			<div>
				<h2>곡 목록</h2>
			</div>
			<div>
				<%
				// 아이유 노래 리스트 
			    List<Map<String, Object>> musicList = new ArrayList<>();

			    Map<String, Object> musicInfo = new HashMap<>();
			    musicInfo.put("id", 1);
			    musicInfo.put("title", "팔레트");
			    musicInfo.put("album", "Palette");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
			    musicInfo.put("time", 217);
			    musicInfo.put("composer", "아이유");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 2);
			    musicInfo.put("title", "좋은날");
			    musicInfo.put("album", "Real");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
			    musicInfo.put("time", 233);
			    musicInfo.put("composer", "이민수");
			    musicInfo.put("lyricist", "김이나");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 3);
			    musicInfo.put("title", "밤편지");
			    musicInfo.put("album", "palette");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
			    musicInfo.put("time", 253);
			    musicInfo.put("composer", "제휘,김희원");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 4);
			    musicInfo.put("title", "삐삐");
			    musicInfo.put("album", "삐삐");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
			    musicInfo.put("time", 194);
			    musicInfo.put("composer", "이종훈");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 5);
			    musicInfo.put("title", "스물셋");
			    musicInfo.put("album", "CHAT-SHIRE");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
			    musicInfo.put("time", 194);
			    musicInfo.put("composer", "아이유,이종훈,이채규");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 6);
			    musicInfo.put("title", "Blueming");
			    musicInfo.put("album", "Love poem");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
			    musicInfo.put("time", 217);
			    musicInfo.put("composer", "아이유,이종훈,이채규");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);
				%>
					<table class="table">
						<thead>
							<tr>
								<th>no</th>
								<th>제목</th>
								<th>앨범</th>
							</tr>	
						</thead>
						<tbody>
							<%
								for(Map<String, Object> music : musicList) {
									
							%>
								<tr>
									<td><%= music.get("id") %></td>
									<td><a href="quiz02.jsp?<%= music.get("title")%>"><%= music.get("title") %></a></td>
									<td><%= music.get("album") %></td>
								</tr>
							<%
								}
							%>	
						</tbody>
					</table>
			</div>
		</div>
		
</div>
	
	
</div>
</body>
</html>