<%-- 
    Document   : flogincontrol
    Created on : 1 Apr, 2025, 12:23:44 PM
    Author     : yadav
--%>

<%@page import="com.mohit.dao.Users2DAO"%>
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

    Users2DAO ud = new Users2DAO();
    int r = ud.loginCheck(un, ps);
    
    if (r > 0) {
        response.sendRedirect("registerFaculty.jsp"); // Redirect on success
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

