package co.yedam.app.board;

import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import co.yedam.app.common.FileRenamePolicy;

/**
 * Servlet implementation class BoardInsert
 */
@WebServlet("/BoardInsert.do")
@MultipartConfig(maxFileSize=1024*1024*2, location="d:/upload") //request.getParts() 
public class BoardInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public BoardInsert() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8"); // 한글 출력되도록
//		request.setCharacterEncoding("utf-8"); // GET방식은 setCharacterEncoding 할 필요없음
		System.out.println("게시글 등록 서블릿 실행");
		BoardDAO dao = new BoardDAO();
		BoardVO vo = new BoardVO();
		//1. 파라미터 받기
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String id = request.getParameter("id");				
				
		//첨부파일 처리
		Part part = request.getPart("fileName");
		String filename = getFileName(part);
		String path = "d:/upload";
		if(filename !=null && !filename.isEmpty()) {
			
			//중복파일처리
			File f = FileRenamePolicy.rename(new File(path, filename)); //파일명이 중복될 경우, 번호를 붙여줌
			part.write(f.getAbsolutePath()); //업로드 폴더에 파일 저장
			vo.setFileName(f.getName()); //파일명을 vo 담기
		}
		
		//2. 서비스 로직 처리
		
		vo.setTitle(title);
		vo.setContents(contents);
		vo.setId(id);
		
		
		dao.BoardInsert(vo);
		//3. 목록 페이지로 이동
		String contextPath = getServletContext().getContextPath();
		response.sendRedirect(contextPath + "/BoardList.do");
		
		
		
	}
	
	private String getFileName(Part part) throws UnsupportedEncodingException {
		for (String cd : part.getHeader("Content-Disposition").split(";")) {
			if (cd.trim().startsWith("filename")) {
				return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}

}
