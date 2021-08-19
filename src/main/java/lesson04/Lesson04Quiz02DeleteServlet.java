package lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class Lesson04Quiz02DeleteServlet extends HttpServlet {

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		
		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();

		// DELETE 쿼리 수행
		String deleteQuery = "delete from `bookmark` where name = " + name;
		try {
			mysqlService.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// DB 연결 해제
		mysqlService.disconnect();

		// 목록 화면으로 이동 (redirect)
		response.sendRedirect("/lesson04/quiz02_1.jsp");

	}
}
