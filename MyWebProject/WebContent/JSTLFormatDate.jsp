<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<p>
    Date format in Indian locale:
    <fmt:setLocale value="en_IN" />
    <fmt:formatDate value="${now}" /><br>
    
    Date format in US locale:
    <fmt:setLocale value="en_US" />
    <fmt:formatDate value="${now}" /> <br>
    
    Date format in France locale:
    <fmt:setLocale value="fr_FR" />
    <fmt:formatDate value="${now}" /><br>
    
    Date format in German locale:
    <fmt:setLocale value="de_DE" />
    <fmt:formatDate value="${now}" /><br>
</p>
