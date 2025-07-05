<%-- 
    Document   : P4
    Created on : 11 Mar, 2025, 8:21:58 PM
    Author     : yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String f = request.getParameter("fname");
          String m = request.getParameter("mname");
  String l = request.getParameter("lname");
String name = f + " " + m + " " + l;
        
        %>
        <h1>Welcome : <%=name %></h1>
    </body>
</html>
