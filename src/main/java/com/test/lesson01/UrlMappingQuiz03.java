package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//UrlMappingEx03
@WebServlet("/servlet/quiz03")
public class UrlMappingQuiz03 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title></title><head><body>");
		out.print("<h1>[단독] 고양이가 야옹해</h1>");
		out.print("<p>기사 입력 시간: 2021/35/23 11:35:32</p>");
		out.print("<hr>");
		out.print("<p>끝<p></body></html>");
		
	}
}
