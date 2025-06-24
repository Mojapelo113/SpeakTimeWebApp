<%-- 
    Document   : num_format
    Created on : Jun 24, 2025, 6:11:29 PM
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
        
        <div align = "center">
            <h1>NUMBER FORMAT EXCEPTION</h1>
        <p><%=exception.getMessage()%></p>
        
        <p>Click <a href="name_entry.jsp">HERE</a> to re-enter.</p>
        <p>Click <a href="LogOut.do">HERE</a> to LOG OUT .</p>
    
        </div>
        
    </body>
    
</html>
