<%-- 
    Document   : saveid
    Created on : 27 Mar, 2025, 9:23:51 PM
    Author     : yadav
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.ram.dao.StudentDAO, com.ram.bean.StudentBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Details</title>
</head>
<body>
    <h2>Student Details</h2>
    <%
        String id = request.getParameter("id");
        if (id != null && !id.trim().isEmpty()) {
            StudentDAO sd = new StudentDAO();
            StudentBean sb = sd.findById(101);

            if (sb != null) {
    %>
  
                
    <%
            } else {
    %>
                <p>No student found with ID: <%= id %></p>
    <%
            }
        } else {
    %>
            <p>Please enter a valid Student ID.</p>
    <%
        }
    %>
</body>
</html>

