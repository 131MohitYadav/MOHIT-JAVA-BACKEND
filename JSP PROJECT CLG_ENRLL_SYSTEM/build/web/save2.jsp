<%-- 
    Document   : save2
    Created on : 27 Mar, 2025, 2:23:16 AM
    Author     : yadav
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mohit.dao.StudentDAO"%>
<%@page import="com.mohit.bean.StudentBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        
        int sid = Integer.parseInt(request.getParameter("sid"));
        String name = request.getParameter("name");
        String enroll = request.getParameter("enroll");
         String enrolld = request.getParameter("enrolld");
             String dob = request.getParameter("dob");
              String email = request.getParameter("email");
              String mobile = request.getParameter("mobile");
          String clg = request.getParameter("clg");
              String city = request.getParameter("city");
            // Create StudentBean object
    StudentBean sb = new StudentBean();
    sb.setSid(sid);
    sb.setName(name);
    sb.setEnroll(enroll);
    sb.setEnrolld(enrolld);
    sb.setDob(dob);
    sb.setEmail(email);
    sb.setCourse(mobile);
    sb.setClg(clg);
    sb.setCity(city);
    
    
    // Call DAO to insert data
    StudentDAO sd = new StudentDAO();
    int result = sd.addStudent(sb);
    
    // Redirect to addstudent.jsp with success message
    if (result > 0) {
        response.sendRedirect("registerStudent.jsp?message=success");
    } else {
        out.println("<h3 style='color:red;'>Error adding student. Try again!</h3>");
    }   


%>
         

    </body>
</html>
