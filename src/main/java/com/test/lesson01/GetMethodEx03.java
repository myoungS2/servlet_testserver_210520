package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethodEx03 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/json"); // 내려갈 데이터는 json이다!(알려주기)
		
		// ex03_get(브라우저)에서 요청한 값 돌려주기
		PrintWriter out = response.getWriter();
		String userId =	request.getParameter("user_id"); // 쿼리스트링의 키값
		String name = request.getParameter("name");
		Integer age = Integer.valueOf(request.getParameter("age")); // 숫자로 바꿔주기 자료형 변환해주기 (나중에 연산하게 될지도 모르기 때문에)
		
//		out.println("GET METHOD");
//		out.println("userId : " + userId); // value값
//		out.println("name : " + name);
//		out.println("age : " + age);
		
		
//		Request Method -> 차이점 알고있기!(면접대비)
//		- GET : 1. 쿼리스트링이 있다.(없을수도 있음) 2.Request Body의 내용이 x 3. URL브라우저를 치고 들어갈 수 있다.
//		 ?뒤에 파라미터(input값) = 쿼리스트링(패스 뒷쪽에 물음표로 시작하는, key-value 쌍 최대 255자?)
//		- POST 
		
		// JSON {"user_id":"mythe1004", "name":"meeyoung","age":22} => key:value 
		out.print("{\"user_id\":\""+ userId + "\", \"name\":\"" + name 
				+ "\", \"age\":" + age + "}");		 // 가장 바깥쪽 "와 구분하기 위해 역슬래쉬 사용해서 구분!
		
		
	}
	
}
