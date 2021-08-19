package lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;

@WebServlet("/lesson04/ex02_insert")
public class Lesson04Ex02Servlet extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 파라미터에서 값을 꺼낸다.
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
		
		// DB 연결 - 싱글턴이라 한개만 생성된다.
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection(); // DB 연결   
		
		// 쿼리 insert 
		String insertQuery = "insert into new_user (name, yyyymmdd, email, introduce)"
				// values ('신보람', '20000101', 'aaa@naver.com', 'aaa')
				+ "values ('" + name + "', '" + yyyymmdd + "', '" + email + "', '" + introduce + "')";
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB 연결 해제
		mysqlService.disconnect();
		
		// redirect(유저 목록 화면)
		response.sendRedirect("/lesson04/ex02_1.jsp");
	}
}
