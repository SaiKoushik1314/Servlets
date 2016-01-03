<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.Enumeration"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RequestHeaders</title>
</head>
<body>
	<%-- Demonstrating the request object --%>
	<table border=1 cellspacing=0 cellpadding=2>
		<%
			String strHeaderName = "";
			Enumeration e = request.getHeaderNames();
			while (e.hasMoreElements()) {
				strHeaderName = (String) e.nextElement();
		%>
		<tr>
			<td><%=strHeaderName%></td>
			<td><%=request.getHeader(strHeaderName)%></td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>