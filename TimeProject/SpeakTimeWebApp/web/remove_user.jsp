<%-- 
    Document   : remove_user
    Created on : Jun 21, 2025, 1:04:55 PM
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
            <h1>REMOVE ALL RECORDS FROM SPECIFIC USER</h1>
            <form action="RemoveServlet.do" method="POST">
            
                <table border="0">
                        <tr>
                            <td>Unique ID:</td>
                            <td><input type="text" name="id" required=""></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="REMOVE"></td>
                        </tr>     
                </table>

            </form>
        </div>
    </body>
</html>
