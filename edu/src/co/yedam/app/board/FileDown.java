package co.yedam.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.FileDownloadHelper;

@WebServlet("/FileDown.do")
public class FileDown extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//게시글 번호 파라미터
		String seq = request.getParameter("seq");
		int seq1 = Integer.parseInt(seq);
		//단건조회해서 파일 이름을 확인
		BoardDAO dao = new BoardDAO();
		BoardVO vo =dao.getBoard(seq1);
		
		//다운로드
		if(vo.getFileName()!=null) {
			// 응답 헤더 다운로드로 설정
			response.reset();
			int filesize = 0;
			String fileName = new String(vo.getFileName().getBytes("utf-8"),
					"iso-8859-1");
			String realPath = "d:/upload/" + vo.getFileName();
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName+"\"");
			response.setHeader("Content-Transfer-Encoding", "binary");
//			response.setContentLength( filesize );
			response.setHeader("Pragma", "no-cache;");
			response.setHeader("Expires", "-1;");
						
						FileDownloadHelper.copy(realPath, response.getOutputStream());
						
						response.getOutputStream().close();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
