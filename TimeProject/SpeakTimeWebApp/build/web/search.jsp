<%-- 
    Document   : search
    Created on : Jun 11, 2025, 2:04:44 PM
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
        <div align="center">
            <h1>Search For Time In Language By A User</h1>
            <form action="SearchServlet.do" method="POST">
            
                <table border="0">
                        <tr>
                            <td>Unique ID:</td>
                            <td><input type="text" name="id" required=""></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="SEARCH"></td>
                        </tr>     
                </table>

            </form>
        </div>
    </body>
</html>
