<%-- 
    Document   : remove_outcome
    Created on : Jun 21, 2025, 1:12:14 PM
    Author     : Nare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: gray">
         <%
           Long id = (Long) session.getAttribute("id");
        %>
        
        <div align="center">
            <h1>You've successfully removed all records for user <%=id%> in the database.</h1>

            <p>Click <a href="super_user_menu.html">HERE</a> to go back to menu.</p>
            <p>Click <a href="LogOut.do">HERE</a> to LOG OUT .</p>
        
        </div>
    </body>
</html>
