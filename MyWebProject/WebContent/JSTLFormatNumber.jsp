<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title>fmt:formatNumber Demo</title>
</head>
<body>
	<c:set var="val" value="1234500.51" />
	<fmt:setLocale value="en_GB" />
	en_GB Format Number:
	<fmt:formatNumber value="${val}" />
	<br>

	<fmt:setLocale value="en_US" />
	en_US Format Number:
	<fmt:formatNumber value="${val}" />
	<br>

	<fmt:setLocale value="fr_FR" />
	fr_FR Format Number:
	<fmt:formatNumber value="${val}" />
</body>
</html>
