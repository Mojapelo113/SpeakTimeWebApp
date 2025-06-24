<%-- 
    Document   : access_denied
    Created on : Jun 16, 2025, 11:29:46 AM
    Author     : Nare
--%>

<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: gray">
        <div align="center">
            <h1>Access Denied</h1>
        <%
           session.invalidate();
        %>
        <p>You are not allowed to have an access to the following resource you trying to access.</p>

        <p><a href="LogOut.do">exit</a></p>
        </div>
        
    </body>
</html>
