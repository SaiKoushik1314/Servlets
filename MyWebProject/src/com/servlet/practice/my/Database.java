package com.servlet.practice.my;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Database
 */
@WebServlet("/Database")
public class Database extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Database() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	try{
		Connection dbconn;
		Statement stmt;
		ResultSet rset;
		// Step1 Loading the dbDriver
		Class.forName("org.apache.derby.jdbc.EmbeddedDriver").newInstance();

		// Step 2 Establishing the DB Connection
		dbconn = DriverManager.getConnection("jdbc:derby:C:\\Users\\SaiKoushik\\MyDB");

		// step3 Creating The statement Object to run the Query
		stmt = dbconn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

		// step4 Running SQL Query to read the Data
		String query = "Select Name from employee";
		rset = stmt.executeQuery(query);
		//System.out.println("Query is executed  Successfully");

		// step5 Read the Data From result Set Object
		//rset.beforeFirst();
		
		PrintWriter out = response.getWriter();
		out.println(rset);
//		out.println("<TABLE BORDER=1>");
//		out.println("<TR><TD>EMPNO</TD>");
//		out.println("<TD>Name</TD>");
//		out.println("<TD>Salary</TD></TR>");
//		while (rset.next()) {
//			out.println("<tr><td> " + rset.getString("EmpNo") + "</td><td>"  + rset.getString("Name")
//					+ "</td><td> " + rset.getString("Salary")+"</td></tr>");
//		}
//		out.println("</TABLE>");
		rset.close();
		stmt.close();
		dbconn.close();
	}catch (InstantiationException | IllegalAccessException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
