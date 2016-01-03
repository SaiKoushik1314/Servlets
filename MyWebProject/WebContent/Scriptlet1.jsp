<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head> <title>JSP Scriptlet</title>
<style type="text/css">
.odd { background-color: white }
.even { background-color: gray }
</style>
</head>
<body>
    <table border="1" width="100px">
        <%
            for (int c = 1; c <= 10; c++) {
                if (c % 2 == 0) {
        %>
        <tr class="even"> <td><%=c%></td> </tr>
        <%
                } else {
        %>
        <tr class="odd"> <td><%=c%></td> </tr>
        <%
                }
            }
        %>
    </table>
</body>
</html>
