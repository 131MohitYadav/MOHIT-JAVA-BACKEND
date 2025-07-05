<%-- 
    Document   : MyStudent
    Created on : 20 May, 2024, 7:35:57 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <h1>This is My View Page</h1>
        <form action="StudentController">
            ID: <input type="text" name="id"><br>
            NAME: <input type="text" name="name"><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
