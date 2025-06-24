<%-- 
    Document   : search_outcome
    Created on : Jun 11, 2025, 4:15:45 PM
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
    <body style="background-color: gray">
        <%
          List<String> times = (List<String>)request.getAttribute("times");
          Long id = (Long) request.getAttribute("id");
        %>
        <div align="center">
            <h1>Search Outcomes For User <%=id%></h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>Outcome Times</th>
                    </tr>
                </thead>
                <tbody>
                   <%
                        for (int i = 0; i < times.size(); i++) {
                        String time = times.get(i);
                   %>
                    <tr>
                        <td><%=time%></td>
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
