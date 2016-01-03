<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>JSTL page</title>
<style type="text/css">
.odd {
	background-color: white
}

.even {
	background-color: gray
}
</style>
</head>
<body>
	<table border="1" width="100px">
		<c:forEach begin="1" end="10" step="1" var="i">
			<c:choose>
				<c:when test="${i % 2 == 0}">
					<tr class="even">
						<td><c:out value="${i}" /></td>
					</tr>
				</c:when>
				<c:otherwise>
					<tr class="odd">
						<td><c:out value="${i}" /></td>
					</tr>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</table>
</body>
</html>