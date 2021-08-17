<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="bg-danger">
	<ul class="nav nav-fill">
		<li class="nav-item"><a href="template.jsp" class="nav-link">전체</a></li>
		<li class="nav-item"><a href="template.jsp?category=지상파"
			class="nav-link">지상파</a></li>
		<%-- 요청+서버의 역할 모두! 파라미터를 넘겨줌 --%>
		<li class="nav-item"><a href="template.jsp?category=드라마"
			class="nav-link">드라마</a></li>
		<li class="nav-item"><a href="template.jsp?category=예능"
			class="nav-link">예능</a></li>
		<li class="nav-item"><a href="template.jsp?category=영화"
			class="nav-link">영화</a></li>
		<li class="nav-item"><a href="template.jsp?category=스포츠"
			class="nav-link">스포츠</a></li>
	</ul>
</nav>