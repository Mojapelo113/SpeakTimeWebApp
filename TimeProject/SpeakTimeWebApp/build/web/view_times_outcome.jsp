<%-- 
    Document   : view_times_outcome
    Created on : Jun 3, 2025, 9:54:19 PM
    Author     : Nare
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: grey"> 
        <% List<String> times = (List<String>) request.getAttribute("times");  %>
        <div align="center">
            <h1>Heyy!! Below it's the list of times checked.</h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>NO</th>
                        <th>LANGUAGE TIMES</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <% 
                       for (int i = 0; i < times.size(); i++) {
                               String t = times.get(i);
    
                    %>
                    <tr>
                        <td><%=i+1%></td>
                        <td><%=t%></td>
                    </tr>
                   <%
                      }
                   %>
                </tbody>
            </table>

                <p>Click <a href="super_user_menu.html">HERE</a> to go back to menu.</p>
                <p>Click <a href="LogOut.do">HERE</a> to LOG OUT .</p>
        </div>
            
    </body>
</html>
