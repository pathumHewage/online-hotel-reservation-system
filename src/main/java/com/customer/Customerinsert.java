package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Customerinsert")
public class Customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String roomname = request.getParameter("name");
		String type= request.getParameter("type");
		String number = request.getParameter("number");
		String pets = request.getParameter("pets");
		String serve= request.getParameter("serve");
		String menu= request.getParameter("menu");
		String gym = request.getParameter("gym");
		String swimming = request.getParameter("swpl");
		String surrounding = request.getParameter("sur");
		String recomendation = request.getParameter("rec");
		String dseason = request.getParameter("dsea");
		String guide = request.getParameter("guide");
		String vehicle = request.getParameter("vfac");
		
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertroom(roomname, type, number, pets, serve,menu,gym,swimming,surrounding,recomendation,dseason,guide,vehicle);
		
		if(isTrue == true) {
			
			List<room> rd = CustomerDBUtil.getroomDetails(roomname);
			request.setAttribute("cusDetails", rd);
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
			
		}else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request,response);
		}
		
		
	}

}
