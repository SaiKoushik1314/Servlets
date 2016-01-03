package com.servlet.practice.my;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DispatcherServlet1
 */
@WebServlet("/DispatcherServlet1")
public class DispatcherServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DispatcherServlet1() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setIntHeader("Refresh", 5);
		response.setContentType("text/html");
//		RequestDispatcher rd = request.getRequestDispatcher("Hy.html");
//		if(rd!=null){
//			rd.include(request, response);
//		}
//		RequestDispatcher rd2  = request.getRequestDispatcher("/FServlet");
//		if(rd2!=null){
//			rd2.forward(request, response);
//		}
		
		PrintWriter out = response.getWriter();
		HttpSession sessioninfo = request.getSession();
		String id = sessioninfo.getId();
		SimpleDateFormat format = new SimpleDateFormat("dd-mm-yyyy hh:mm:ss a");
		String a = format.format(sessioninfo.getCreationTime());
		String b = format.format(sessioninfo.getLastAccessedTime());
		out.println(id);
		out.println(a);
		out.println(b);
		
		Calendar cal =  new GregorianCalendar();
		TimeZone zone = cal.getTimeZone();
		int hour = cal.get(Calendar.HOUR);
		int min = cal.get(Calendar.MINUTE);
		int sec = cal.get(Calendar.SECOND);
		out.println("Time is:"+hour+"hrs"+min+"mins"+sec+"secs");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
