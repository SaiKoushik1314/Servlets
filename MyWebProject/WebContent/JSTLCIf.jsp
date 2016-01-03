<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="cal" class="java.util.GregorianCalendar" />
<c:set var="hour" value="${cal.time.hours}" />
Current Hour:
<c:out value="${hour}" />
<br>
<c:if test="${hour >=0 && hour <=11}">
	<c:out value="Good Morning" />
</c:if>

<c:if test="${hour >=12 && hour <=17}">
	<c:out value="Good Afternoon" />
</c:if>

<c:if test="${hour >=18 && hour <=23}">
	<c:out value="Good Evening" />
</c:if>
