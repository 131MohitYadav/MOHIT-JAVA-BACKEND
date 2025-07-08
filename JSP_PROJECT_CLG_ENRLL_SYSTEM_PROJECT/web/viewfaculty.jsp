<%-- 
    Document   : viewfaculty
    Created on : 2 Apr, 2025, 4:56:59 PM
    Author     : yadav
--%>

<%@page import="com.mohit.bean.FacultyBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mohit.dao.FacultyDAO"%>
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
    <h1>ALL FACULTY DATA</h1>

    <div class="enroll-btn">
<!--        <button><a href="registerFaculty.jsp">Enroll New Faculty</a></button>-->
          <button><a href="Index.jsp">Home Page</a></button>
    </div>
    

    <table>
        <tr>
            <th>FID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>D.O.B</th>
            <th>HIRE_DATE</th>
            <th>EMAIL</th>
            <th>DEPARTMENT_N</th>
            <th>SALARY</th>
            <th>DESIGNATION</th>
            <th>EDIT</th>
            <th>DELETE</th>
        </tr>
        <%
        // Step 1: Create an Object of StudentDAO class
        FacultyDAO sd = new FacultyDAO();
        ArrayList<FacultyBean> all = sd.findAll();
        
        for(FacultyBean sb : all) {
        %>
        <tr>
            <td><%=sb.getFid() %></td>
            <td title="<%=sb.getName()%>"><%=sb.getName().length() > 15 ? sb.getName().substring(0, 15) + "..." : sb.getName() %></td>
             <td><%=sb.getGender() %></td>
            <td><%=sb.getDob() %></td>
            <td><%=sb.getHiredate() %></td>
            <td title="<%=sb.getEmail()%>"><%=sb.getEmail().length() > 15 ? sb.getEmail().substring(0, 15) + "..." : sb.getEmail() %></td>
             <td title="<%=sb.getDept()%>"><%=sb.getDept().length() > 11 ? sb.getDept().substring(0, 11) + "..." : sb.getDept() %></td>
             <td><%=sb.getSalary() %></td>
            <td title="<%=sb.getDesi()%>"><%=sb.getDesi().length() > 15 ? sb.getDesi().substring(0, 15) + "..." : sb.getDesi() %></td>
            
            <td><a class="edit-btn" href="feditform.jsp?fid=<%=sb.getFid() %>">EDIT</a></td>
            <td><a class="delete-btn" href="fdelete.jsp?fid=<%=sb.getFid() %>">DELETE</a></td>
        </tr>
        <%
        }
        %>
    </table>
    
  
    

</body>
</html>
