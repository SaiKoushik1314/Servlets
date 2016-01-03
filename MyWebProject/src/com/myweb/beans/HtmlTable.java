package com.myweb.beans;
import java.sql.*;

public class HtmlTable {

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