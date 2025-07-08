<%-- 
    Document   : fdelete
    Created on : 3 Apr, 2025, 8:35:40 PM
    Author     : yadav
--%>

 

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
      int fid=Integer.parseInt(request.getParameter("fid"));
      FacultyDAO  sd=new FacultyDAO();
      int r=sd.deleteFaculty(fid);
      if(r>0){
          response.sendRedirect("viewfaculty.jsp");
      }
      %>
      <h1>FID : <%=fid %></h1>

    </body>
</html>

