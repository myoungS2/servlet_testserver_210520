package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지 -> 항상 윗쪽에 있게(먼저 세팅)
		response.setCharacterEncoding("UTF-8");  // response의 헤더값에 들어가게 됨
		response.setContentType("text/plain"); 
		
		PrintWriter out = response.getWriter();
		out.println("urlmapping ex01");
		out.println("hello world!!!");
		out.println("안녕 서블릿");
		
		// 날짜에 대한 객체
		Date now = new Date();
		out.println(now);  // Thu Jul 29 20:50:48 KST 2021 -> date 객체가 통으로 찍혔다.
		
		// formatter (날짜에 대한) -> 원하는 모양으로..!
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		out.println(sdf.format(now)); // 포멧이 적용 된 now를 찍는다. 
		// 2021-07-29 오후 09:10:20
	}
}

/*
 * 사이클(어떻게 돌아가는지) -> input -> ? -> output (각각의 역할)
 * 맺고 끊음을 잘해라
 */
