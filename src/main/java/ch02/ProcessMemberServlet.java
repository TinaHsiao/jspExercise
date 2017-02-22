package ch02;

import java.io.IOException;

import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProcessMemberServlet
 */
@WebServlet("/ch02/member.do")
public class ProcessMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("mId");
		String password= request.getParameter("pswd");
		String name = request.getParameter("mName");
		String address = request.getParameter("mAddress");
		String phone = request.getParameter("mPhone");
		String bday = request.getParameter("mBirthday"); 
		String weight = request.getParameter("mWeight");
		
		java.sql.Date date = null;
		date = java.sql.Date.valueOf(bday);
		
//		java.sql.Date date = null;
//		try {
//			date = java.sql.Date.valueOf(bday);
//		} catch (Exception e) {
//			;
//		}
		
		Timestamp ts = new Timestamp(System.currentTimeMillis());
			
		double dWeight = -1;
		dWeight = Double.parseDouble(weight.trim());
		
//		double dWeight = -1;
//		try {
//			dWeight = Double.parseDouble(weight.trim());
//		} catch (NumberFormatException e) {
//			;
//		} catch (NullPointerException e) {
//			;
//		}
		
		MemberBean mb = new MemberBean(id,password,name,address,phone,date,ts,dWeight);
		
		String forwardPath = "/ch02/InsertMemberSuccess.jsp";
		try{
			MemberFileIO mfio = new MemberFileIO("c:\\_JSP\\data\\member.dat");
			mfio.insertMember(mb);
		}catch(IOException e){
			forwardPath = "/ch02/InsertMemberError.jsp";
		}
		request.setAttribute("memberBean", mb);
		RequestDispatcher rd = request.getRequestDispatcher(forwardPath);
		rd.forward(request, response);
		return;
		
	}

}
