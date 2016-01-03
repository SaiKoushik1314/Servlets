<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>c:out Action Demo</title>
</head>
<body>
	<c:out value="${x}" default="This is default value" />
	<br>
	<c:set var="i" value="10" />
	<br>
	<c:out value="${i}" />
	<br>
	<c:out value="${i + 10}" />
</body>
</html>
