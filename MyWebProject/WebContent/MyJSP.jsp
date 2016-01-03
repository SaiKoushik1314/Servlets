<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Date,java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyJSP</title>
</head>
<style>
form {
  text-align: center;
}</style>

<body>
<p> The date is:</p> <%= new Date() %>
<%!
int a=9,b=20;
%>
<% out.println(a+b); %>
<%out.println("The paramter is: "+request.getParameter("myparam"));
%>
<%Calendar now = Calendar.getInstance();
%><%=now.get(Calendar.YEAR) %>


<table border=1>
<tr>
<td>Name</td>
<td>Sex</td>
</tr>
<tr>
<td width=30> sai</td>
<td width=50> Male</td>
<td><a href="MyCommon.jsp">Search</a>
</table>
<br>
<br>

<br>
<form action ="MycustomerList.jsp">
FIRSTNAME<input type="text" name="firstname">
<br><br>
LASTNAME<input type="text" name="lastname">
<br><br>
AGE<input type="text" maxlength="100">
<br><br>
SEX<select><option value="M">M
<option  value="F">F</select><br><br>
SPOUSE?<select><option value="Y">Y<option value="N">N</select><br><br>
Children<input type="text"><br>
<input type="submit" value="submit">
</form>
<a href = "MycustomerList.jsp">Return to Customers List</a>
	

</body>
</html>