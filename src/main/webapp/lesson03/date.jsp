<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <%-- 얘는 지우면 x --%>
    <%-- result의 일부 --%>
<p>
	현재 시간 : <%= Calendar.getInstance().getTime() %> <%-- 현재 시간을 date객체로 나타내기 --%>
</p>