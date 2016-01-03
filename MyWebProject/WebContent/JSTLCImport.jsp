<%@page contentType="text/html" 
        pageEncoding="UTF-8"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" 
          prefix="c" %> 
<html> 
    <head> 
        <title>The c:import Action</title> 
    </head> 
    <body> 
        <c:import url="Person.xml" var="person" /> 
 
        <textarea cols="40" rows="15"> 
            <c:out value="${person}" /> 
        </textarea> 
    </body> 
</html>
