<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
		String hobby = request.getParameter("hobby");
		String animal = request.getParameter("animal");
		// 선택 항목이 여러개 일 때 getParameterValues
		String[] foodArr = request.getParameterValues("food"); 
		String fruit = request.getParameter("fruit");
	%>
	
	<table border=1>
		<!-- 제목 왼쪽 항목들 오른쪽  -->
		<tr>
			<th>별명</th>
			<td><%= nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%= hobby %></td>
		</tr>
		<tr>
			<th>선호하는 동물</th>
			<td><%= animal %></td>
		</tr>
		<tr>
			<th>선호하는 음식</th>
			<%-- ctrl+shift+/ 	<td><%= foodArr %></td> --%>
			<td>
			<%
				// null 검사
				if (foodArr != null){
					String result = "";
					for (String food : foodArr) {
						// 선택 된 값을 붙여서 나열하기
						result += food + ",";
					}
					// 맨 뒤에 붙은 , 제거
					// ex) abc에서 ab만 가져오는 방법 -> substring(시작index, 끝index+1)
										
					result = result.substring(0, result.length() -1);
					out.print(result);
				}			
			%>
 			</td>

		</tr>
		<tr>
			<th>좋아하는 과일</th>
			<td><%= fruit %></td>
		</tr>
	</table>
</body>
</html>