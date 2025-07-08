<%-- 
    Document   : viewstudent
    Created on : 27 Mar, 2025, 11:52:21 AM
    Author     : yadav
--%>

<%@page import="com.mohit.bean.StudentBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mohit.dao.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Data</title>
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            background-color: antiquewhite;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            padding-top: 20px;
            color: #333;
        }

        /* Styling the table */
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: blanchedalmond;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 20px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            max-width: 150px; /* Adjust column width */
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        /* Button styling */
        button, a {
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            text-decoration: none;
            border-radius: 15px;
            transition: background-color 0.3s ease;
            display: inline-block;
            text-align: center;
            font-weight: bold;
        }

        /* Light blue Enroll button */
        .enroll-btn a {
            background-color: blue;
        }

        .enroll-btn a:hover {
            background-color: #87ceeb;
            color:black;
        }

        /* Edit button - Blue */
        .edit-btn {
            background-color: blue;
        }

        .edit-btn:hover {
            background-color: darkblue;
        }

        /* Delete button - Red */
        .delete-btn {
            background-color: red;
        }

        .delete-btn:hover {
            background-color: darkred;
        }

        .enroll-btn {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h1>ALL STUDENT DATA</h1>

    <div class="enroll-btn">
        
          <button><a href="Index.jsp">Home Page</a></button>
    </div>
    

    <table>
        <tr>
            <th>SID</th>
            <th>NAME</th>
            <th>ENROLL_NO</th>
            <th>ENROLL_D</th>
            <th>DOB</th>
            <th>EMAIL</th>
            <th>COURSE</th>
            <th>COLLEGE</th>
            <th>CITY</th>
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>
        <%
        // Step 1: Create an Object of StudentDAO class
        StudentDAO sd = new StudentDAO();
        ArrayList<StudentBean> all = sd.findAll();
        
        for(StudentBean sb : all) {
        %>
        <tr>
            <td><%=sb.getSid() %></td>
            <td title="<%=sb.getName()%>"><%=sb.getName().length() > 15 ? sb.getName().substring(0, 15) + "..." : sb.getName() %></td>
            <td title="<%=sb.getEnroll()%>"><%=sb.getEnroll().length() > 10 ? sb.getEnroll().substring(0, 10) + "..." : sb.getEnroll() %></td>
            <td><%=sb.getEnrolld() %></td>
            <td><%=sb.getDob() %></td>
            <td title="<%=sb.getEmail()%>"><%=sb.getEmail().length() > 15 ? sb.getEmail().substring(0, 15) + "..." : sb.getEmail() %></td>
             <td title="<%=sb.getCourse()%>"><%=sb.getCourse().length() > 11 ? sb.getCourse().substring(0, 11) + "..." : sb.getCourse() %></td>
            <td title="<%=sb.getClg()%>"><%=sb.getClg().length() > 15 ? sb.getClg().substring(0, 15) + "..." : sb.getClg() %></td>
            <td><%=sb.getCity() %></td>
            <td><a class="edit-btn" href="editform.jsp?sid=<%=sb.getSid() %>">EDIT</a></td>
            <td><a class="delete-btn" href="delete.jsp?sid=<%=sb.getSid() %>">DELETE</a></td>
        </tr>
        <%
        }
        %>
    </table>
    
    
    <div class="enroll-btn">
        <button><a href="viewfaculty.jsp">VIEW FACULTY DATA</a></button>
         
    </div>
    
    
  
    

</body>
</html>
