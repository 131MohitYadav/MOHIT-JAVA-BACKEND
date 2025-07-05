<%-- 
    Document   : saveuser
    Created on : 17 Mar, 2025, 11:54:34 AM
    Author     : yadav
--%>

<%@page import="com.ram.bean.UsersBean"%>
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
      //step1: Fetch all data from the request
      int uid=Integer.parseInt(request.getParameter("uid"));
      String name=request.getParameter("name");
      String un=request.getParameter("un");
      String ps=request.getParameter("ps");
      String mobile=request.getParameter("mobile");
      String email=request.getParameter("email");
      //step2: Create Object of UsersBean
      UsersBean ub=new UsersBean();
      ub.setEmail(email);
      ub.setMobile(mobile);
      ub.setName(name);
      ub.setPassword(ps);
      ub.setUid(uid);
      ub.setUsername(un);
      //step4: Create Object of UsersDAO
      UsersDAO ud=new UsersDAO();
      //step5: Call registerUser()
      int r=ud.registerUser(ub);
      if(r>0){
          out.println("<h1><font color='green'>Account Created Successfully</font> </h1>");
      }else{
          out.println("<h1><font color='red'>User Registration Fail Please try Again</font> </h1>");
          RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
          rd.include(request, response);
      }
      %>
    
    </body>
</html>
