<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
<%
	// 메뉴 데이터
	List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);
    
	/* String seacrchMenu = request.getParameter("menu");
	String checked = request.getParameter("point");	
	
	if (checked != null){
		for (Map<String, Object> reveiw : list) {
			if ((reveiw.get("menu")).equals("seacrchMenu")) {
				out.print(reveiw.get("menu"));
			} else
		}
	} */
	
%>
	<div class="container">
		<h1  class="text-center">검색 결과</h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>메뉴</th>
					<th>상호</th>
					<th>별점</th>
				</tr>
			</thead>
			<tbody>
			<%
				String keyword = request.getParameter("keyword");
				// value값이 꺼내져 옴! 체크 ㅇ-> true / 체크 x -> null이 넘어옴
				String starPointFilter = request.getParameter("starPointFilter"); 
				// 체크 여부 불린변수로 체크하기 -> 4점 이하는 제외를 하겠다!
				boolean exclude = (starPointFilter != null); // 체크됨 (4점 이하 제외)
				
				// 반복문(list 하나씩 꺼내기-> Map<String, Object>)
				for (Map<String, Object> item : list) {
					// 조건문 1 : 검색어와 메뉴가 일치하는지
					if (keyword.equals(item.get("menu"))) {
						// 조건문 2 : 4점 이상만 보기가 체크되어있는지
						if (exclude && (double) item.get("point") <= 4.0) {
							continue;
						} // 조건문 2 여기서 닫힘! 조건2를 통과하면 밑에 테이블이 생성되는 것!
			%>
						<tr>
							<td><%= item.get("menu") %></td>
							<td><%= item.get("name") %></td>
							<td><%= item.get("point") %></td>					
						</tr>
			<%
					} // 조건문1 여기서 닫힘!
				}
			%>	
			</tbody>
		</table>
	</div>

</body>
</html>