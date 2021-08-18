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

@WebServlet("/lesson04/quiz01")
public class Lesson04Quiz01 extends HttpServlet {
	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		// DB 연결
		mysqlService.connection();
		
		// 쿼리 수행
		
		// insert
		String insertQuery = "insert into `real_estate`(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)"
				+ "values (3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null)";
		
		// select 
		
		String selectQuery = "select `address`, `area`, `type` from `real_estate`"
				+ " 			order by `id` limit 10";
		
		PrintWriter out = response.getWriter();
		ResultSet result = null;
		try {
			result = mysqlService.select(selectQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			while (result.next()) {
				out.println("매물 주소" + result.getString("address") + "," + result.getString("area")
				+ "," + result.getString("type"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// DB 연결 끊기
		mysqlService.disconnect();
	}
}
