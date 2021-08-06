package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz09")
public class PostMethodQuiz09 extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String selfIntroduction = request.getParameter("selfIntroduction");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>입사지원서</title></head><body>");
		out.print("<p><b>" + name + "</b>님 지원이 완료 되었습니다.</p>");
		out.print("<b>지원내용</b>");
		out.print("<p>"+ selfIntroduction + "</p>");
		out.print("</body></html>");
		
	}
}
