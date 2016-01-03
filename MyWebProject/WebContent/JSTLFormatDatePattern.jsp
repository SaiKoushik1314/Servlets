<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
 
<html> 
    <head> 
        <title>format Date Time</title> 
    </head> 
    <body> 
<jsp:useBean id="now" class="java.util.Date" /> 
<fmt:formatDate value ="${now}" 
                type="both" 
                timeStyle="short" 
                dateStyle="full" /> <br/> 
<fmt:formatDate value ="${now}" 
                type="time" 
                timeStyle="long"/> <br/> 
 
<fmt:formatDate value ="${now}" 
                pattern="EEEE hh:mm a"/>
    </body> 
</html>
