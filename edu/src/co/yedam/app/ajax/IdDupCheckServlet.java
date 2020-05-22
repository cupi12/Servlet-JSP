package co.yedam.app.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.member.MemberDAO;
import co.yedam.app.member.MemberVO;

/**
 * Servlet implementation class IdDupCheckServlet
 */
@WebServlet("/IdDupCheck.do")
public class IdDupCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.파라미터 받기
		String id = request.getParameter("id");
		// 2.서비스 로직 처리
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.getMember(id);

		// 3. 결과를 전송
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		if (vo.getId() == null) {
			out.print("사용가능");
		} else {
			out.print("사용 불가능");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
