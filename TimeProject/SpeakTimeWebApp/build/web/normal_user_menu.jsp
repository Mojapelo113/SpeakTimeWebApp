<%-- 
    Document   : normal_user_menu
    Created on : Jun 20, 2025, 5:36:53 AM
    Author     : Nare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: grey">
        <div align="center">
            <%
              String comp = application.getInitParameter("computer_name");
              String name = (String) session.getAttribute("name");
            %>
            <h1>Hey <%=name%>, it's <%=comp%> again <br>
                BELOW IS A NORMAL USER MENU</h1>
            <p>Click <a href="provide_time.jsp">HERE</a> to start with finding language time of your own.</p>
        </div>
    </body>
</html>
