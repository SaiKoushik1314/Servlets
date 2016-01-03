<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<HTML>
<HEAD> <TITLE> The JDBCQuery JSP  </TITLE> </HEAD>
<BODY BGCOLOR=white>

<% String searchCondition = request.getParameter("cond"); 
   if (searchCondition != null) { %>
      <H3> Search results for : <I> <%= searchCondition %> </I> </H3>
      <%= runQuery(searchCondition) %>
      <HR><BR>
<% }  %>

<B>Enter a search condition:</B>
<FORM METHOD=get> 
<INPUT TYPE="text" NAME="cond" SIZE=30>
<INPUT TYPE="submit" VALUE="Ask Oracle">;
</FORM>
</BODY>
</HTML>
<%! 
  private String runQuery(String cond) throws SQLException {
     Connection conn = null; 
     Statement stmt = null; 
     ResultSet rset = null; 
     try {
    	 //DriverManager.registerDriver("org.apache.derby.jdbc.EmbeddedDriver");
    	 Class.forName("org.apache.derby.jdbc.EmbeddedDriver").newInstance();
        conn = DriverManager.getConnection("jdbc:derby:C:\\Users\\SaiKoushik\\MyDB");
        stmt = conn.createStatement();
        rset = stmt.executeQuery ("SELECT ename, sal FROM scott.emp "+ 
                                  (cond.equals("") ? "" : "WHERE " + cond ));
        return (formatResult(rset));
     } catch (SQLException |ClassNotFoundException | InstantiationException | IllegalAccessException e) { 
         return ("<P> SQL error: <PRE> " + e + " </PRE> </P>\n");
     } finally {
         if (rset!= null) rset.close(); 
         if (stmt!= null) stmt.close();
         if (conn!= null) conn.close();
     }
  }

  private String formatResult(ResultSet rset) throws SQLException {
    StringBuffer sb = new StringBuffer();
    if (!rset.next())      
      sb.append("<P> No matching rows.<P>\n");
    else {  sb.append("<UL><B>"); 
         do {  sb.append("<LI>" + rset.getString(1) + 
                            " earns $ " + rset.getInt(2) + ".</LI>\n");
            } while (rset.next());
         sb.append("</B></UL>"); 
    }
    return sb.toString();
  }
%>