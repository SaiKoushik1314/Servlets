<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML> 
  <HEAD> 
    <TITLE>
       SimpleQuery JSP
    </TITLE>
  </HEAD>
 <BODY BGCOLOR=EOFFFO> 
 <H1> Hello 
  <%= (request.getRemoteUser() != null? ", " + request.getRemoteUser() : "") %>
 !  I am SimpleQuery JSP.
 </H1>
 <HR>
 <B> I will do a basic JDBC query to get employee data  
     from EMP table in schema SCOTT..
 </B> 

 <P>
<%
    try {
      // Use the following 2 files whening running inside Oracle 8i
      // Connection conn = new oracle.jdbc.driver.OracleDriver().
      //                     defaultConnection ();
      Class.forName("org.apache.derby.jdbc.EmbeddedDriver").newInstance();

      Connection  conn = 
          DriverManager.getConnection("jdbc:derby:C:\\Users\\SaiKoushik\\MyDB");
      Statement stmt = conn.createStatement ();
      ResultSet rset = stmt.executeQuery ("SELECT Name, Salary FROM employee ORDER BY Name");
      if (rset.next()) {
%>
     <TABLE BORDER=1 BGCOLOR="C0C0C0">
     <TH WIDTH=200 BGCOLOR="white"> <I>Employee Name</I> </TH>
     <TH WIDTH=100 BGCOLOR="white"> <I>Salary</I> </TH>
     <TR> <TD ALIGN=CENTER> <%= rset.getString(1) %> </TD>
          <TD ALIGN=CENTER> $<%= rset.getDouble(2) %> </TD>
     </TR>

<%     while (rset.next()) {
%>

     <TR> <TD ALIGN=CENTER> <%= rset.getString(1) %> </TD>
          <TD ALIGN=CENTER> $<%= rset.getDouble(2) %> </TD>
     </TR>

<% }
%>
      </TABLE>
<%  } 
      else {
%>
     <P> Sorry, the query returned no rows! </P>

<% 
      }
      rset.close();
      stmt.close();
    } catch (SQLException e) {
      out.println("<P>" + "There was an error doing the query:");
      out.println ("<PRE>" + e + "</PRE> \n <P>");
    }
%>

 </BODY>
</HTML>
