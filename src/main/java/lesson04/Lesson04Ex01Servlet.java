package lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;

@WebServlet("/lesson04/ex01")
public class Lesson04Ex01Servlet extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// 흐름을 이 안에 가지고 있어야함
		MysqlService mysqlService = MysqlService.getInstance();
		
		// DB 연결
		mysqlService.connection();
		
		// 쿼리 수행 (mySQL 문법)
		
		// 1) insert
		String insertQuery = "insert into `used_goods`(`title`, `price`, `description`, `sellerId`)"
				+ "values ('고양이 간식 팝니다.', 2000, '저희 고양이가 입맛이 까다로워서 잘 안먹어요 ㅠ', 5)";
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace(); // 에러의 원인을 콘솔에 찍는다.
		}
		
		// 2) select
		String selectQuery = "select * from used_goods";
		
		PrintWriter out = response.getWriter();
		try {
			ResultSet result = mysqlService.select(selectQuery);
			while (result.next()) { // 결과 행이 있는 동안 수행
				out.println(result.getInt("id"));
				out.println(result.getString("title"));
				out.println(result.getInt("price"));
				out.println(result.getString("description"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		// DB 연결 끊기
		mysqlService.disconnect();
	
	}

}

