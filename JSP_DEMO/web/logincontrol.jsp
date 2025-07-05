<%-- 
    Document   : logincontrol
    Created on : 17 Mar, 2025, 11:56:42 AM
    Author     : yadav
--%>

<%@page import="com.ram.dao.UsersDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
              <%
      String un=request.getParameter("un");
      String ps=request.getParameter("ps");
      
UsersDAO ud=new UsersDAO();
int r=ud.loginCheck(un, ps);
if(r>0){
    response.sendRedirect("viewstudent.jsp");
}else{
    out.println("Login Fail Please Try Again....");
    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
    rd.include(request, response);
}
      %>
    
    </body>
</html>
