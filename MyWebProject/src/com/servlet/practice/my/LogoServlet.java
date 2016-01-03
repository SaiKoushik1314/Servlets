package com.servlet.practice.my;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LogoServlet
 */
@WebServlet("/LogoServlet")
public class LogoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         response.setContentType("text/html");
         PrintWriter out = response.getWriter();
//         String firstName = request.getParameter("FIRSTNAME");
//         out.println(firstName);
         Enumeration<String> paramNames = request.getParameterNames();
 		while (paramNames.hasMoreElements()) {
 			String paramName = paramNames.nextElement();
 			String[] paramValues = request.getParameterValues(paramName);
 			String paramValue = paramValues[0];
 			if (paramValue.length() == 0) {
 				paramValue = "<I>No Value</I>";
 			}
 			out.println("<LI>" + paramName + ": " + paramValue);
 		}	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
