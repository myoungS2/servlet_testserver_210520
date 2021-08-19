package lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;

@WebServlet("/lesson04/ex02_delete")
public class Lesson04Ex02DeleteServlet extends HttpServlet {
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request에서 삭제할 아이디를 꺼냄
		int id = Integer.valueOf(request.getParameter("id")); // 억지로 타입 변환? valueOf 
													// 어떤타입인지 이미 아는 경우 -> (integer) 캐스팅
		
		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		// DELETE 쿼리 수행
		String deleteQuery = "delete from new_user where id = " + id;
		try {
			mysqlService.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB 연결 해제
		mysqlService.disconnect();
		
		// 목록 화면으로 이동 (redirect)
		response.sendRedirect("/lesson04/ex02_1.jsp");
	}
}
