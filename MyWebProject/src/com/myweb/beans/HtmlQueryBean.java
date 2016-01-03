package com.myweb.beans;
import java.sql.*;

public class HtmlQueryBean {

  private String searchCondition = "";
  private String connStr = null;

  public String getResult() throws SQLException {
    return runQuery();
  }

  public void setSearchCondition(String searchCondition) {
    this.searchCondition = searchCondition;
  }
  
  public void setConnStr(String connStr) {
    this.connStr = connStr;
  }

  private String runQuery() {
    Connection conn = null;
    Statement stmt = null;
    ResultSet rset = null;
    try {
      if (conn == null) {
    	  
          conn = DriverManager.getConnection("jdbc:derby:C:\\Users\\SaiKoushik\\MyDB");
   
      }
      stmt = conn.createStatement();
      rset = stmt.executeQuery ("SELECT Name as \"Name\", " + 
               "empno as \"Employee Id\","+ 
               "sal as \"Salary\"," +  
               "TO_CHAR(hiredate, 'DD-MON-YYYY') as \"Date Hired\"" + 
               "FROM scott.emp " + (searchCondition.equals("") ? "" :
               "WHERE " + searchCondition ));
      return  format(rset);
    } catch (SQLException e) { 
      return ("<P> SQL error: <PRE> " + e + " </PRE> </P>\n");
    }
    finally {
    try {
      if (rset!= null) rset.close();
      if (stmt!= null) stmt.close(); 
      if (conn!= null) conn.close();
      } catch (SQLException ignored) {}
    }
  } 
  
  public static String format(ResultSet rs) throws SQLException {
    StringBuffer sb = new StringBuffer();
    if (rs == null || !rs.next())
      sb.append("<P> No matching rows.<P>\n");
    else {
      sb.append("<TABLE BORDER>\n");
      ResultSetMetaData md = rs.getMetaData();
      int numCols = md.getColumnCount();
      for (int i=1; i<= numCols; i++) {
        sb.append("<TH><I>" + md.getColumnLabel(i) + "</I></TH>");
      }
      do {
        sb.append("<TR>\n");
        for (int i = 1; i <= numCols; i++) {
          sb.append("<TD>");
          Object obj = rs.getObject(i);
          if (obj != null)  sb.append(obj.toString());
          sb.append("</TD>");
        }
        sb.append("</TR>");
      } while (rs.next());
      sb.append("</TABLE>");
    }
    return sb.toString();
  }
}