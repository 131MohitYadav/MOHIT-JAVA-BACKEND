<%-- 
    Document   : delete
    Created on : 17 Mar, 2025, 11:44:52 AM
    Author     : yadav
--%>

<%@page import="com.ram.dao.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
      int sid=Integer.parseInt(request.getParameter("sid"));
      StudentDAO  sd=new StudentDAO();
      int r=sd.deleteStudent(sid);
      if(r>0){
          response.sendRedirect("viewstudent.jsp");
      }
      %>
      <h1>SID : <%=sid %></h1>

    </body>
</html>
