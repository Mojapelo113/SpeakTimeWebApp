<%-- 
    Document   : login
    Created on : Jun 16, 2025, 11:25:36 AM
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
            <h1>Log in</h1>
            <form action="j_security_check" method="POST">
            <table border="0">
                    <tr>
                        <td>username:</td>
                        <td><input type="text" name="j_username" required=""></td>
                    </tr>
                    <tr>
                        <td>password:</td>
                        <td><input type="text" name="j_password" required=""></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="LOG IN"></td>
                    </tr>
            </table>

        </form>
            
        </div>
        
        
    </body>
</html>
