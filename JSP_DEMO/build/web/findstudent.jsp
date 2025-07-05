<%-- 
    Document   : findstudent
    Created on : 27 Mar, 2025, 9:22:24 PM
    Author     : yadav
--%>

<%@ page import="com.ram.dao.StudentDAO" %>
<%@ page import="com.ram.bean.StudentBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Student</title>
</head>
<body>
    <h2>Search Student</h2>

    <!-- Search Form -->
    <form method="post">
        <label for="sid">Enter Student ID:</label>
        <input type="text" id="sid" name="sid" required>
        <input type="submit" value="Search">
    </form>

    <hr>

    <%
        // Retrieve the Student ID from the request
        String sidStr = request.getParameter("sid");

        if (sidStr != null && !sidStr.isEmpty()) {
            try {
                int sid = Integer.parseInt(sidStr);

                // Call findById() method
                StudentDAO studentDAO = new StudentDAO();
                StudentBean student = studentDAO.findById(sid);

                // If student exists (check if sid is not 0)
                if (student.getSid() != 0) {
    %>
                <h3>Student Details</h3>
                <table border="1">
                   <tr><th>Student ID</th><td><%= student.getSid() %></td></tr>
                    <tr><th>Name</th><td><%= student.getName() %></td></tr>
                    <tr><th>Enrollment</th><td><%= student.getEnroll() %></td></tr>
<!--                    <tr><th>Enrollment Date</th><td><%= student.getEnrolld() %></td></tr>
                    <tr><th>Date of Birth</th><td><%= student.getDob() %></td></tr>
                    <tr><th>Email</th><td><%= student.getEmail() %></td></tr>
                    <tr><th>Mobile</th><td><%= student.getMobile() %></td></tr>
                    <tr><th>College</th><td><%= student.getClg() %></td></tr>
                    <tr><th>City</th><td><%= student.getCity() %></td></tr>-->
                  
                </table>
    <%
                } else {
                    out.println("<p style='color:red;'>Student Not Found!</p>");
                }
            } catch (NumberFormatException e) {
                out.println("<p style='color:red;'>Invalid Student ID! Please enter a number.</p>");
            }
        }
    %>

</body>
</html>

