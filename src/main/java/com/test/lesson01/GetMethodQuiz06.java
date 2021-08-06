package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class GetMethodQuiz06 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/json");
		
		Integer number1 = Integer.valueOf(request.getParameter("number1"));
		Integer number2 = Integer.valueOf(request.getParameter("number2"));
		
		PrintWriter out = response.getWriter();
		// JSON {"addition": 1570, "subtraction": 1430, "subtraction": 105000, "division": 21} => key:value 
		out.print("{\"addition\":" + (number1 + number2)
		+", \"subtraction\":" + (number1 - number2) 
		+ ", \"multiplication\":" + (number1 * number2) 
		+ ", \"division\":" + (number1 / number2) + "}");
	}
}
