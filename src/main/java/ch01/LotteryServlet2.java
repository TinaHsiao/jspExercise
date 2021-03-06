package ch01;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LotteryServlet2
 */
@WebServlet("/ch01/LotteryServlet2")
public class LotteryServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}
	
	protected void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		try {
			request.setCharacterEncoding("UTF-8");
			String name = request.getParameter("visitor");
			if(name == null || name.trim().length() == 0){		//trim()字串去掉空白
				name = "訪客";
			}
			
			String type = request.getParameter("numberType");
			LotteryBean lottery = new LotteryBean();
			Collection<Integer> coll = null;
			if(type.equalsIgnoreCase("BIG")){
				lottery.setLowerBound(1);
				lottery.setUpperBound(49);
				lottery.setBallNumber(6);
				
				coll = lottery.getLuckyNumbers();
			}else if(type.equalsIgnoreCase("MID")){
				lottery.setLowerBound(1);
				lottery.setUpperBound(42);
				lottery.setBallNumber(6);
				
				coll = lottery.getLuckyNumbers();
			}else if(type.equalsIgnoreCase("SMALL")){
				lottery.setLowerBound(1);
				lottery.setUpperBound(39);
				lottery.setBallNumber(5);
				
				coll = lottery.getLuckyNumbers();
			}else{
				lottery.setLowerBound(0);
				lottery.setUpperBound(9);
				lottery.setBallNumber(4);
				
				coll = lottery.getFourStars();
			}
			
			request.setAttribute("visitName", name);
			request.setAttribute("luckyNumber", coll);
			
			RequestDispatcher rd = request.getRequestDispatcher("/ch01/goodLuck.jsp");
			rd.forward(request, response);
			return;
			
		} catch (UnsupportedEncodingException e) {
			throw new ServletException(e);
		}
		
	}
}
