<%-- 
    Document   : P2
    Created on : 11 Mar, 2025, 8:13:59 PM
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
            // STEP 1 -> Fetch data from the request
            String name = request.getParameter("name");
            // STEP 2 -> PRINT THE RESULT
            out.println("Welcome to Jsp : " + name);
            %>
    </body>
</html>
