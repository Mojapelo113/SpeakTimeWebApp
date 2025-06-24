<%-- 
    Document   : name_entry
    Created on : Jun 20, 2025, 5:14:13 AM
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
             %>
            <h1>Hello!  I'm <%=comp%> and I'll be assisting you through the web application. <br>
                 PLEASE PROVIDE YOUR DETAILS BELOW</h1>
            <form action="StartSessionServlet.do" method="POST">
                <table border="0">
                        <tr>
                            <td>NAME:</td>
                            <td><input type="text" name="name" required=""></td>
                        </tr>
                        <tr>
                            <td>USER ID:</td>
                            <td><input type="text" name="user_id" required=""></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="SUBMIT"></td>
                        </tr>

                </table>

            </form>
        </div>
    </body>
</html>
