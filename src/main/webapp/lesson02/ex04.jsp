<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
	<%
		// Map을 테이블로 표현하기 -> 반복문을 통해서 tr을 만들기!
		// {"korean"=85, "english"=72, "math"=90, "science"=100} json은 key:value
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("korean", 85);
		scoreMap.put("english", 72);
		scoreMap.put("math", 90);
		scoreMap.put("science", 100);
	%>
	
	<table border=1>
		<%
		Iterator<String> iter = scoreMap.keySet().iterator(); // iter는 key를 하나하나씩 가리킴
		while (iter.hasNext()) {
			String key = iter.next(); 

		%>
		<tr>
			<th>
			<%-- <%= key %> --%>
				<%
					if (key.equals("korean")) {
						out.print("국어");
					} else if (key.equals("english")) {
						out.print("영어");
					} else if (key.equals("math")) {
						out.print("수학");
					} else if (key.equals("science")) {
						out.print("과학");
					} 
				%>
			</th>
			<td><%= scoreMap.get(key) %></td>
		</tr>
		<%
		} // while문을 여기에서 닫아줌! 태그가 포함되게 됨!
		%>
	</table>
</body>
</html>