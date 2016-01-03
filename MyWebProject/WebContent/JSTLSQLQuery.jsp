
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<title>JSTL SQL Tag Library Demo</title>
</head>
<body>
	<sql:setDataSource var="connection"
		driver="org.apache.derby.jdbc.EmbeddedDriver"
		url="jdbc:derby:C:\\Users\\SaiKoushik\\MyDB" />
	<sql:query var="result" dataSource="${connection}">
SELECT * FROM EMPLOYEE
</sql:query>
<table border="1" width="100%">
<tr>
   <th>EMP ID</th>
   <th>Name</th>
   <th>Salary</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.empno}"/></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.salary}"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>
