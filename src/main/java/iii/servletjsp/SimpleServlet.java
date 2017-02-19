package iii.servletjsp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(
			urlPatterns={"/FirstSimpleProgram",
						 "/ch02/kitty/FirstSimpleProgram", "/ch11/*", "/ch02/snoopy/*",
						 "*.abc","/notdothis.jsp"}
			)	//url-pattern
public class SimpleServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);要刪掉，否則會執行到父類別(空的)造成錯誤405
		
		resp.setContentType("text/html ; charset=UTF-8");
		try(PrintWriter out = resp.getWriter();){				//AutoClose 強迫此變數只能在try{}使用
			out.println("<html><head><title>");
			out.println("由瀏覽器送出回應很累人");
			out.println("</title></head><body>");
			out.println("這是doGet()方法印出的訊息");
			
			out.println("<hr>");
			out.println("Request URL= "+req.getRequestURL()+"<br>");
			out.println("Request URI= "+req.getRequestURI()+"<br>");
		out.println("ContextPath= "+req.getContextPath()+"<br>");
			out.println("ServletPath= "+req.getServletPath()+"<br>");
			out.println("PathInfo= "+req.getPathInfo()+"<br>");
			out.println("您的IP為: "+req.getRemoteAddr()+"<br>");
			
			Enumeration<String> e = req.getHeaderNames();
			while(e.hasMoreElements()){
				String header = e.nextElement();
				String value = req.getHeader(header);
				out.println("請求標頭: "+header+"="+value+"<br>");
								
			}out.println("</body></html>");
		}
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		System.out.println("這是doPost()方法印出的訊息");
	}

}
