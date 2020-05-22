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

@WebServlet("/FindNameJson")
public class FindNameJson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.파라미터 받기
		String id = request.getParameter("id");
		// 2.서비스 로직 처리
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.getMember(id);

		// 3. 결과를 전송
		response.setContentType("text/plain; charset=utf-8"); //json 에서는 text/html ,text/plain 두개 똑같음
		PrintWriter out = response.getWriter();
		//{id:"id값" , name:"name값"}
		//{"id":"id","name":"name"}
		out.print("{\"id\":\""+vo.getId()+"\",\"name\":\""+vo.getName()+"\"}");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
