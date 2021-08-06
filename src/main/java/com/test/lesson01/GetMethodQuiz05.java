package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class GetMethodQuiz05 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		Integer number = Integer.valueOf(request.getParameter("number"));
		
		out.print("<html><head><title></title></head><body><ul>");
		int result = 1;
		for (int i = 1; i <= 9; i++) {
//			result = i * number;
			out.print("<li>" + number + " X " + i + " = " + (number * i) + "</li>");
			
		}
		out.print("</ul></body></html>");
	}
}
