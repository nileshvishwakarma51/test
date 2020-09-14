<%-- 
    Document   : signout
    Created on : Apr 2, 2020, 7:45:24 PM
    Author     : Nilesh Vishwakarma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <%
        
       
        session.invalidate();
        response.sendRedirect("index.html");
        
        %>
    </body>
</html>
