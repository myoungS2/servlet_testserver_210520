<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="d-flex">
	<%-- 로고영역 --%>
	<div>
		<h3 class="text-success">Melong</h3>
	</div>
	<%-- 검색영역 get방식(리퀘스트1) --%>
	<div class="d-flex input-group">
		<form method="get" action="info_template.jsp">
			<input type="text" class="form-control" name="search">
			<button type="submit" class="btn btn-info input-group-append">검색</button>
		</form>
	</div>
</header>