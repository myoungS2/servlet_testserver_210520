<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
	<%-- 결과물 출력하는 곳 --%>
	현재 시간은?<br>
	<%-- 정적 방식 --%>
	<%@ include file="date.jsp" %> <%-- date.jsp 복붙 (상대경로 같은 폴더 내의 이름이 date.jsp) --%>
</body>
</html>