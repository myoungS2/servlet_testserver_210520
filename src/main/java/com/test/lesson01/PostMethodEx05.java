package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class PostMethodEx05 extends HttpServlet {
	@Override
	// 메소드 일치! Post는 Post로 받기!
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		response.setCharacterEncoding("utf-8"); 필터 있기 때문에!
		response.setContentType("text/html");
		
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		// 테이블 출력
		PrintWriter out = response.getWriter();
		out.print("<html><head><title></title></head><body>");
		out.print("<table border=1>");
		out.print("<tr><th>아이디</th><td>" + userId+ "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.print("</table>");
		out.print("</body></html>");
		
//		Request Method
//		- Get -<a>태그
//		- Post
//		
//		브라우저 -> 필터 -> 서버(서블릿)
//			   <- 필터 <-
//				(인코딩) -> 톰캣보다 나중에 인코딩 되므로, 한글깨짐 방지할 수 있음! / 중요한 정보가 보이지 않게 암호화를 걸어줄수도 있음!(전처리.후처리)
		
//		System.out.print("#### 서블릿 통과");
	}
}
