<%-- 
    Document   : my
    Created on : 20 May, 2024, 7:39:29 PM
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
        <h1>ID : <%=(Integer)request.getAttribute("id")%></h1>
       <h1>Name : <%=request.getAttribute("name")%></h1>
        
    </body>
</html>
