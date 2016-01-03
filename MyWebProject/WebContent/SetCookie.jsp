<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SaveToSession</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		if (username == null)
			username = "";
		Cookie cookie = new Cookie("username", username);
		cookie.setMaxAge(365 * 24 * 60 * 60);
		response.addCookie(cookie);
	%>
	<p>
		<a href="ShowCookie.jsp">Next Page to view the session value</a>
	<p>
</body>
</html>