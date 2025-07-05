<%-- 
    Document   : save
    Created on : 12 Mar, 2025, 7:47:43 PM
    Author     : yadav
--%>
<%@page import="java.sql.*"%>
<%@page import="com.ram.dao.StudentDAO"%>
<%@page import="com.ram.bean.StudentBean"%>

<%
    // Get student details from the form
    int sid = Integer.parseInt(request.getParameter("sid"));
    String name = request.getParameter("name");
    String enroll = request.getParameter("enroll");
    int p = Integer.parseInt(request.getParameter("p"));
    int c = Integer.parseInt(request.getParameter("c"));
    int m = Integer.parseInt(request.getParameter("m"));
    int h = Integer.parseInt(request.getParameter("h"));
    int e = Integer.parseInt(request.getParameter("e"));

    // Create StudentBean object
    StudentBean sb = new StudentBean();
    sb.setSid(sid);
    sb.setName(name);
    sb.setEnroll(enroll);
    sb.setP(p);
    sb.setC(c);
    sb.setM(m);
    sb.setH(h);
    sb.setE(e);
    
    // Call DAO to insert data
    StudentDAO sd = new StudentDAO();
    int result = sd.addStudent(sb);
    
    // Redirect to addstudent.jsp with success message
    if (result > 0) {
        response.sendRedirect("addStudent.jsp?message=success");
    } else {
        out.println("<h3 style='color:red;'>Error adding student. Try again!</h3>");
    }
%>
