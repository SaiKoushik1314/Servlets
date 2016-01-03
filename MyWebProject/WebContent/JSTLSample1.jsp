<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="cal" class="java.util.GregorianCalendar" />
<c:set var="hour" value="${cal.time.hours}" />
Current Hour:
<c:out value="${hour}" />
<br>
<c:choose>
<c:when test="${hour >=0 && hour <=11}">
	<c:out value="Good Morning" />
</c:when>

<c:when test="${hour >=12 && hour <=19}">
	<c:out value="Good Afternoon" />
</c:when>
 </c:choose>
<br>
 <jsp:useBean id="now" class="java.util.Date" />
 Currentdate:
 <c:out value="${now}"/>

<html>
<head>MYJSTL
</head>
<title>JSTLSample1</title>
<style type="text/css">
h1 {
	background-color: Yellow;
	color: green;
	Font-style: verdana
}

 .odd { 
 background-color:violet
	
}

.even {
	background-color: pink
}

</style>
<body>
	<h1>HY this is my first JSTL</h1>
	<table border=1>
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