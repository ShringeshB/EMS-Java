<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
    <%
        String s = "/EMS-1.0-SNAPSHOT/login.jsp";
        response.sendRedirect(s);
    %>
</body>
</html>