<%-- 
    Document   : logout_outcome
    Created on : Jun 3, 2025, 10:09:56 AM
    Author     : Nare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log Out Page</title>
    </head>
    <body style="background-color: gray">
         <%
           String name = (String)session.getAttribute("name");
           Long user_id = (Long) session.getAttribute("user_id");
           String computer_name = application.getInitParameter("computer_name");
           
           int numRecord = (Integer)session.getAttribute("numRecord");
        %>
        
        <div align="center">
            <h1><%=name%>, You've successfully Logged Out.</h1>
            <p>You have checked how to speak time <%=numRecord%> time(s).</p>
            
            <a href="LogOutServlet.do">HOME PAGE</a>
        </div>
    </body>
</html>
