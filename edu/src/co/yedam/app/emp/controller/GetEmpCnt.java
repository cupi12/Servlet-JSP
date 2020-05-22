package co.yedam.app.emp.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.emp.model.EmpDAO;
import net.sf.json.JSONArray;

@WebServlet("/GetEmpCnt.do")
public class GetEmpCnt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public GetEmpCnt() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Map<String, Object>> list = EmpDAO.getInstance().selectDeptSal();
		//java 객체를 => json String [{"department_id:"~~~",cnt:s}]
//		String result = "[";
//		
//		for(int i=0; i<list.size(); i++) {
//			
//			result += "{";
//			result += "\"department_id\":";
//			result += "\"" +list.get(i).get("department_id")+ "\",";
//			result += "\"cnt\":";
//			result += list.get(i).get("cnt");
//			result += "}";
//			if(i<list.size()-1) {
//				result += ",";
//			}
//		}
//		result +="]";
		String result = JSONArray.fromObject( list ).toString();  
		response.getWriter().print(result);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
