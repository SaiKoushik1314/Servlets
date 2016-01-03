<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>The c:url Action</title>
</head>
<body>
    <c:if test="${!empty param.mode}"> 
        Parameter: <c:out value="${param.mode}" /> <br>
    </c:if>
    <a href="<c:url     value="http://localhost:8080/MyWebProject/JSTLCUrl.jsp"> 
            <c:param name="mode" value="demo" /> 
         </c:url>">The c:url Action Demo</a>
</body>
</html>
