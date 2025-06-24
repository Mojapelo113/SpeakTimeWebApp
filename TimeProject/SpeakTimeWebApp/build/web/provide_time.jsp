<%-- 
    Document   : provide_time
    Created on : Jun 2, 2025, 11:49:04 PM
    Author     : Nare
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROVIDE DIGITAL TIME</title>
    </head>
    <body style="background-color: grey">
        <%
           String name = (String)session.getAttribute("name");
           Long user_id = (Long) session.getAttribute("user_id");
           String computer_name = application.getInitParameter("computer_name");
        %>
        <div align="center">
            <h1><%=name%>(<%=user_id%>)!!!!, Please check any time of your choice below. </h1>

            <p>Please enter digital time below</p>
            <form action="ProcessServlet.do" method="POST">
                <table border="0">
                        <tr>
                           <td>HH:</td><td><input type="text" name="hour" required=""></td>
                            <td>MM:</td><td><input type="text" name="minute" required=""></td>
                           <td>SS:</td><td><input type="text" name="second" required=""></td>
                        </tr>
                        <TR></TR>
                        <tr>
                         
                            <td></td>
                            <td><input type="submit" value="CONVERT"></td>
                        </tr>
                </table>

            </form>
        </div>
    </body>
</html>
