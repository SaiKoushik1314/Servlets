<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>The c:redirect Action</title>
</head>
<body>
	<c:if test="${param.postback == 1}">
		<c:redirect url="${param.url}" />
	</c:if>

	<form action="JSTLCRedirect.jsp" method="post">
		<label for="url">Search Engine</label> <select name="url">
			<option value="http://google.com">Google</option>
			<option value="http://yahoo.com">Yahoo</option>
			<option value="http://bing.com">Microsoft</option>
		</select> <input type="hidden" name="postback" value="1" /> <input
			type="submit" value="Go" />
	</form>
</body>
</html>
