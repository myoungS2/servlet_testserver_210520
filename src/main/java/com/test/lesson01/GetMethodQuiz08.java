package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz08")
public class GetMethodQuiz08 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html"); 
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		String keyword = request.getParameter("keyword"); 
		
		PrintWriter out  = response.getWriter();
		out.print("<html><head><title></title></head><body></body></html>");
		
//		Iterator<String> iter = list.iterator();
//		
//		while(iter.hasNext()) {
//			String text = iter.next();
//			if (text.contains(keyword)) {
//				out.print(text + "<br>");
//				out.print(" <b>"+ keyword + "</b>"); // 옵션문제 어렵..ㅠㅠ
//			}
//		}
		
		// 향상 된 for문
		for (String text : list) {
			// 검색
//			if (text.contains(keyword)) {
//				out.print(text + "<br>");
//			}
			// 풀이1
//			int index = text.indexOf(keyword); // index가 -1보다 크면, 
//			if (index > -1) {
//				// 강남역 최고 |<b>맛집|</b> 을 소개 합니다.
//				StringBuffer sb = new StringBuffer(); // 껴넣기..!
//				sb.append(text);
//				sb.insert(index, "<b>");
//				sb.insert(index + 3 + keyword.length(), "</b>"); // 키워드 단어 길이와 <b> 길이를 더한다.
//				out.print(sb + "<br>");
//			}
			
			// 풀이2
//			String[] words = text.split(keyword);
//			if (text.contains(keyword)) {
//				// 강남역 최고 맛집 을 소개 합니다.
//				out.print(words[0] + "<b>" + keyword + "<b>" + words[1] + "<br>");
//			}
//			
			// 풀이3
			if (text.contains(keyword)) {
				text = text.replace(keyword, "<b>" + keyword + "</b>"); // 치환
				out.print(text + "<br>");
			}
		}
		
		out.print("</body></html>");
	}
}
