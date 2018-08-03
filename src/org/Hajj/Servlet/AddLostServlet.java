package org.Hajj.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.Hajj.dao.PilgrimDao;

/**
 * Servlet implementation class AddLostServlet
 */
@WebServlet("/LostServlet")
public class AddLostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PilgrimDao.insert();
		response.sendRedirect("bracelet_on.jsp");
	}

}
