<%-- 
    Document   : fupdate
    Created on : 3 Apr, 2025, 8:53:01 PM
    Author     : yadav
--%>

<%@page import="com.mohit.bean.FacultyBean"%>
<%@page import="com.mohit.dao.FacultyDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <%
        int fid = Integer.parseInt(request.getParameter("fid"));
        String name = request.getParameter("name");
        String gen = request.getParameter("gen");
         String dob = request.getParameter("dob");
             String hired = request.getParameter("hired");
              String email = request.getParameter("email");
              String dept = request.getParameter("dept");
           double sal = Double.parseDouble(request.getParameter("sal"));
              String desi = request.getParameter("desi");
            // Create StudentBean object
    FacultyBean sb = new FacultyBean();
    sb.setFid(fid);
    sb.setName(name);
    sb.setGender(gen);
    sb.setDob(dob);
    sb.setHiredate(hired);
    sb.setEmail(email);
    sb.setDept(dept);
    sb.setSalary(sal);
    sb.setDesi(desi);
        
//step3: Create Object of StudentDAO and call updateStudent()
FacultyDAO sd=new FacultyDAO();
int r=sd.updateStudent(sb);
 if (r > 0) {
        response.sendRedirect("viewfaculty.jsp?message=success");
    } else {
        out.println("<h3 style='color:red;'>Error updated faculty. Try again!</h3>");
    }   
 
        
        
        %>
        
    
    </body>
</html>
