<%-- 
    Document   : time_outcome
    Created on : Jun 3, 2025, 8:18:28 AM
    Author     : Nare
--%>

<%@page import="za.ac.nare.entity.Watch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OUTCOME</title>
    </head>
    <body style="background-color: gray">
        <%
           String name = (String)session.getAttribute("name");
           Long user_id = (Long) session.getAttribute("user_id");
           String computer_name = application.getInitParameter("computer_name");
           
           Watch watch = (Watch)request.getAttribute("watch");
           String stringTime = (String) request.getAttribute("stringTime");
           String type = stringTime.substring(stringTime.lastIndexOf(" ")+1);
           
           String hour = watch.getHours()+"";
           if(hour.length()==1) hour = "0"+hour;
           
           String minute = watch.getMinutes()+"";
           if(minute.length()==1) minute = "0"+minute;
           
           String second = watch.getSeconds()+"";
           if(second.length()==1) second = "0"+second;
           
        %>
        <div align="center">
            <h1>Hey <%=name%>, it's <%=computer_name%> again. You've decided 
                to convert digital time to the one you can read. Below is the outcome.</h1>
                
                <table border="1">
                    <thead>
                        <tr>
                            <th>DIGITAL TIME</th>
                            <th>LANGUAGE TIME</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%=hour%> : <%=minute%> : <%=second%> <%=type%></td>
                            <td><%=stringTime%></td>
                        </tr>
                    </tbody>
                </table>
                        
                        <p>We hope you've enjoyed our service of helping you to speak time.</p>
                        <p>Click <a href="provide_time.jsp">HERE</a> to check other times.</p>
                        <p>Click <a href="logout_outcome.jsp">HERE</a> to LOG OUT .</p>

            
        </div>
    </body>
</html>
