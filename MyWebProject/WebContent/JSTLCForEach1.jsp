<%@page contentType="text/html" pageEncoding="UTF-8"
	import="com.myweb.beans.Person, java.util.ArrayList"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Looping with c:forEach</title>
<style type="text/css">
.even {
	background-color: white
}

.odd {
	background-color: gray
}
</style>

</head>
<body>
	<%
		ArrayList<Person> list = new ArrayList<Person>();
		Person p1 = new Person("Amzad", "Basha");
		Person p2 = new Person("Mohammed", "Arshad");
		Person p3 = new Person("Mohammed", "Afsar");
		Person p4 = new Person("Nikhath", "Anjum");
        Person p5 = new Person("Aleefia", "Muskan");

		list.add(p1);
		list.add(p2);
		list.add(p3);
		list.add(p4);
		list.add(p5);
		request.setAttribute("list", list);
	%>
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
		<c:forEach var="person" varStatus ="row" items="${requestScope.list}">
			<c:choose> 
            <c:when test="${row.count % 2 == 0}"> 
                <c:set var="rowStyle" value="even"  /> 
            </c:when> 
            <c:otherwise> 
                <c:set var="rowStyle" value="odd"  /> 
            </c:otherwise> 
        </c:choose> 
			<tr class="${rowStyle}">
				<td><c:out value="${person.firstName}" /></td>
				<td><c:out value="${person.lastName}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
