<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="val" value="40.52" />
<p>
	Currency in India:
	<fmt:setLocale value="en_IN" />
	<fmt:formatNumber value="${val}" type="currency" />
	<br> Currency in UK:
	<fmt:setLocale value="en_GB" />
	<fmt:formatNumber value="${val}" type="currency" />
	<br> Currency in USA:
	<fmt:setLocale value="en_US" />
	<fmt:formatNumber value="${val}" type="currency" />
	<br> Currency in Germany:
	<fmt:setLocale value="de_DE" />
	<fmt:formatNumber value="${val}" type="currency" />
	<br>
</p>
