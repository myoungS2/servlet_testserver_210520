package com.test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

//@WebFilter("/*") // 어떤 주소를 타고 들어와야 filter를 거치게 되는가!를 맵핑해주어야함 (* == 어떤주소이든) 혹은 Web.xml사용 가능!
public class CharacterEncodingFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) // agr0 ~ 2 : 파라미터
			throws IOException, ServletException {
		
		// 필터를 통과할 때 인코딩 설정
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
//		System.out.print("#####필터통과");
		
		chain.doFilter(request, response);
	}
	// ctrl + shift + R -> 파일 이름으로 열기
	
	
	
}
