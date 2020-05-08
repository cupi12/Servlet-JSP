package co.yedam.app.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardList
 */
@WebServlet("/BoardList.do")
public class BoardList extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	BoardDAO dao = new BoardDAO();
	ArrayList<BoardVO> list = dao.getBoardList();
	
	response.setContentType("text/html; charset=utf-8");
	PrintWriter out = response.getWriter();
	out.print("<h3>Board 목록 조회<h3>");
	out.print("<table border=1 text align=center>");
	out.print("<tr>");
	out.print("<td>" + "글번호" +"</td>");
	out.print("<td>" +"작성자"+ "</td>");
	out.print("<td>" +"제목" +"</td>");
	out.print("<td>" +"내용"  +"</td>");
	out.print("<td>" +"등록일자" +"</td>");
	out.print("</tr>");
	for(BoardVO vo : list) {
		out.print("<tr>");
		out.print("<td>" +vo.getSeq() +"</td>");
		out.print("<td>" +vo.getId()+ "</td>");
		out.print("<td>" +vo.getTitle() +"</td>");
		out.print("<td>" +vo.getContents() +"</td>");
		out.print("<td>" +vo.getRegdt() +"</td>");
		out.print("</tr>");
	}
	out.print("</table>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
