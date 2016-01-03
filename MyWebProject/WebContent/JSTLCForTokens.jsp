<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Looping with c:forTokens</title>
</head>
<body>
	<c:set var="infoType" value="Amzad,Basha,38,Male,Java Developer" />
	<table border="1">
		<tr>
			<td>First Name</td>
			<td>Last Name</td>
			<td>Age</td>
			<td>Gender</td>
			<td>Position</td>
		</tr>
		<tr>
			<c:forTokens items="${infoType}" delims="," var="info">
				<td><c:out value="${info}" /></td>
			</c:forTokens>
		</tr>
	</table>
</body>
</html>
