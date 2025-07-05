<%-- 
    Document   : update
    Created on : 17 Mar, 2025, 11:50:22 AM
    Author     : yadav
--%>

<%@page import="com.mohit.bean.StudentBean"%>
<%@page import="com.mohit.dao.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <%
        //step1: Fetch data from the request
        int sid=Integer.parseInt(request.getParameter("sid"));
        String name=request.getParameter("name");
        String enroll=request.getParameter("enroll");
        String enrolld=request.getParameter("enrolld");
        String dob=request.getParameter("dob");
        String email=request.getParameter("email");
      String course = request.getParameter("course");
        String clg=request.getParameter("clg");
           String city=request.getParameter("city");
        
        
        
        
        
//step2:  Create Object of StudentBean and set all data
StudentBean sb=new StudentBean();
sb.setSid(sid);
    sb.setName(name);
    sb.setEnroll(enroll);
    sb.setEnrolld(enrolld);
    sb.setDob(dob);
    sb.setEmail(email);
    sb.setCourse(course);
    sb.setClg(clg);
    sb.setCity(city);
    
//step3: Create Object of StudentDAO and call updateStudent()
StudentDAO sd=new StudentDAO();
int r=sd.updateStudent(sb);
 if (r > 0) {
        response.sendRedirect("viewstudent.jsp?message=success");
    } else {
        out.println("<h3 style='color:red;'>Error updated student. Try again!</h3>");
    }   
 
        
        
        %>
        
    
    </body>
</html>
