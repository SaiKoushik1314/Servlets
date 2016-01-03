<%@page contentType="text/html"  
        pageEncoding="UTF-8" 
        import="com.myweb.beans.Person"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html> 
    <head> 
        <title>c:set Action demo</title> 
    </head> 
    <body> 
        <jsp:useBean id="person" class="com.myweb.beans.Person" /> 
 
        <c:set target="${person}" 
               property="firstName" 
               value="Amzad" /> 
        <c:set target="${person}" 
               property="lastName" 
               value="Basha" /> 
        <c:set var="fullName" 
     value="${person.firstName} ${person.lastName}" /> 
     
        <c:out value="${fullName}" /> 
    </body> 
</html>
