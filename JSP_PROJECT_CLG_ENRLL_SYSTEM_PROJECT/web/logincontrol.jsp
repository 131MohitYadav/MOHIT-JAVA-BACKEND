<%-- 
    Document   : logincontrol
    Created on : 17 Mar, 2025, 11:56:42 AM
    Author     : yadav
--%>

<%@page import="com.mohit.dao.UsersDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <script>
        function showAlert() {
            alert("User not found! Please check your username and password Click on Help");
            window.location.href = "Index.jsp"; // Redirect back to login page
        }
    </script>
</head>
<body>
<%
    String un = request.getParameter("un");
    String ps = request.getParameter("ps");

    UsersDAO ud = new UsersDAO();
    int r = ud.loginCheck(un, ps);
    
    if (r > 0) {
        response.sendRedirect("registerStudent.jsp"); // Redirect on success
    } else {
%>
        <script>
            showAlert();
        </script>
<%
    }
%>
</body>
</html>
