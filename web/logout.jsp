<%-- 
    Document   : logoutJsp
    Created on : 3 Oct, 2024, 1:12:07 AM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>-->
<%
            session = request.getSession();
            session.invalidate();
            response.sendRedirect("success.html");


%>
