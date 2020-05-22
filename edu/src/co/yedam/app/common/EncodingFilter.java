package co.yedam.app.common;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


@WebFilter("*.do")
public class EncodingFilter implements Filter {

	//서블릿 실행 전에 실행
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {//
		request.setCharacterEncoding("utf-8");
		chain.doFilter(request, response);
		System.out.println("인코딩 필터 실행");

	}

	//서블릿 실행 후 실행
	public void init(FilterConfig fConfig) throws ServletException {

	}

	@Override
	public void destroy() {
		
	}

}
