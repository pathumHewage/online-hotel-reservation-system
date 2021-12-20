package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCutomerServlet")
public class UpdateCutomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String roomid = request.getParameter("roomid");
		String roomname = request.getParameter("roomname");
		String type = request.getParameter("type");
		String roomnumber = request.getParameter("number");
		String pets = request.getParameter("pets");
		String serve = request.getParameter("serve");
		String menu= request.getParameter("menu");
		String gym = request.getParameter("gym");
		String swimming = request.getParameter("swpl");
		String surrounding = request.getParameter("sur");
		String recommedation = request.getParameter("rec");
		String dseason = request.getParameter("dsea");
		String guide= request.getParameter("guide");
		String vehicle = request.getParameter("vfac");
		
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updateroom(roomid,roomname, type, roomnumber, pets, serve,menu,gym,swimming,surrounding,recommedation,dseason,guide,vehicle);
		
		if(isTrue == true) {
			
			List<room> rd = CustomerDBUtil.getroomDetails(roomname);
			request.setAttribute("cusDetails", rd);
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}
		else {
			
			
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
