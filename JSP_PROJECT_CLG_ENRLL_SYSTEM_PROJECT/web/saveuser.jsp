<%-- 
    Document   : saveuser
    Created on : 17 Mar, 2025, 11:54:34 AM
    Author     : yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mohit.bean.UsersBean"%>
<%@page import="com.mohit.dao.UsersDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            button, a {
                padding: 10px 20px;
                background-color: blue;
                border-radius: 15px;
                border: none;
                color: white;
                text-decoration: none;
                display: inline-block;
            }
        </style>
    </head>
    <body>
        <%
            // Step 1: Fetch all data from the request
            int uid = Integer.parseInt(request.getParameter("uid"));
            String name = request.getParameter("name");
            String un = request.getParameter("un");
            String ps = request.getParameter("ps");
            String mobile = request.getParameter("mobile");
            String email = request.getParameter("email");

            // Step 2: Create Object of UsersBean
            UsersBean ub = new UsersBean();
            ub.setEmail(email);
            ub.setMobile(mobile);
            ub.setName(name);
            ub.setPassword(ps);
            ub.setLid(uid);
            ub.setUsername(un);

            // Step 3: Create Object of UsersDAO
            UsersDAO ud = new UsersDAO();
            // Step 4: Call registerUser()
            int r = ud.registerUser(ub);
            if (r > 0) {
        %>
                <script>
                    alert("Account created successfully!");
                    window.location.href = "Index.jsp";
                </script>
        <%
            } else {
        %>
                <h1><font color='red'>User Registration Failed. Please try again.</font></h1>
                <a href="register.jsp">Back to Signup</a>
        <%
            }
        %>
    </body>
</html>

