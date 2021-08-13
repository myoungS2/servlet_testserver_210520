<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
	// java 문법
	Calendar today = Calendar.getInstance(); // 객체 생성시 new가 아닌 .getInstance();라는 메소드를 사용!
	// import할 때, 빨간줄에서 ctrl + space bar
	out.println(today);

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
	out.print("오늘 날짜: " + sdf.format(today.getTime()) + "<br>"); 
	// format은 date객체를 넣어야함, today를 getTime 메소드를 사용해서 Date객체 인 것 처럼 사용!
	// Calendar -> Date객체로 변환 => Format적용
	
	// 어제 날짜
	SimpleDateFormat sdf2 = new SimpleDateFormat ("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance();
	yesterday.add(Calendar.DATE, -1); // 하루 전(-), 이후(+)
	// yesterday.add(Calendar.MONTH, -1); // 한달 전
	// yesterday.add(Calendar.YEAR, -1); // 1년 전
	out.print("어제 날짜: " + sdf2.format(yesterday.getTime()) + "<br>");
	
	// 두 날짜 비교 (앞에가 기준, 뒤가 비교값) -> 1(앞날짜가 큼), 0(같음), -1(다름) (int타입으로 리턴)
	int result = today.compareTo(yesterday); // 기준값(today)가 크면 1, 같으면 0, 작으면 -1
	if (result > 0) {
		out.print("today가 더 크다");
	} else if (result == 0) {
		out.print("두 날짜는 같다.");
	} else {
		out.print("yesterday가 더 크다.");
	}
	
	// jodatime, Datetime 도 추가적으로 검색해서 사용하면 좋음!
%>	
</body>
</html>