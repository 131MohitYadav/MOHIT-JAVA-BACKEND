<%@page import="com.mohit.bean.StudentBean"%>
<%@page import="com.mohit.dao.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Update Form</title>
    
        
     <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    
    <style>
                      * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            color: black;
               background: linear-gradient(to right, #00c6ff, #0072ff);
        }

        /* Navigation Bar */
        .navbar {
            margin:0px;
            width: 100%;
            height: 75px;
            display: flex;
            align-items: center;
            justify-content: space-center;
            padding: 0 50px;
            background-color: rgba(0, 0, 0, 0.7);
            gap:40px;
        }

        .logo {
            color: darkorange;
            font-size: 35px;
            font-weight: bold;
        }

        .menu ul {
            display: flex;
            list-style: none;
        }

        .menu ul li {
            margin: 0 20px;
        }

        .menu ul li a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            transition: 0.3s;
        }

        .menu ul li a:hover {
            color: orange;
        }

        /* Search Box */
       
        
        

        .btn {
            background: orange;
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 15px;
            cursor: pointer;
            font-weight: bold;
            font-size: 14px;
        }
        .btn30{
            background-color: white;
            color: blue;
            font-weight: bold;
            padding: 8px 15px;
            border-radius: 15px;
            margin-left: 280px;
            font-size: 14px;
        }

        .btn:hover {
            background: white;
            color: red;
        }
        .btn30:hover{
            background-color: blue;
            color:white;
        }
 
        
        
        
        
        
        
        
        .frm {
            margin: auto;
            width: 60%;
            border-radius: 15px;
        }
        .frm h1 { 
            text-align: center; 
        
        }
        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 80%;
            background-color: lightblue;
            border-radius: 15px;
            box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.2);
        }
        td {
            
            padding: 12px; 
            text-align: center;
            font-weight: bold;
        
        }
        input[type="text"] {
            width: 95%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            box-shadow: inset 2px 2px 5px rgba(0, 0, 0, 0.2);
        }
        input[type="submit"] {
            font-weight: bold;
            background-color: #007bff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
            transition: 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.4);
        }
        h1 {
            text-shadow: 2px 2px 8px blue;
            color: lightblue;
            text-align: center;
            margin-top: 20px;
        }
        
        a{
            text-decoration: none;
        }
    </style>
</head>
<body>
    
    
     <!-- Navbar -->
    <div class="navbar">
        <div class="logo">H . V . U </div>
        
        <div class="menu">
            <ul>
                <li><a href="Index.jsp"><i class="fa-solid fa-home"></i> HOME</a></li>
                <li><a href="#"><i class="fa-solid fa-align-left"></i> ABOUT</a></li>
                <li><a href="findstudent.jsp"><i class="fa-brands fa-usps"></i> PROFILE</a></li>
                <li><a href="#"><i class="fa-solid fa-paintbrush"></i> ADMISSION</a></li>
                <li><a href="help.jsp"><i class="fa-solid fa-address-book"></i> HELP</a></li>
            </ul>
        </div>
        

        
<!--            <input class="srch" type="search" placeholder="Type To Search">-->
<a href="Facultylogin.jsp" class="btn30">FACULTY LOGIN</a>
<a href="Admin.jsp" class="btn">ADMIN LOGIN</a>

    </div>

    
    
    
    
    

<h1 class="head1">STUDENT UPDATE FORM</h1>

<%
    int sid = Integer.parseInt(request.getParameter("sid"));
    StudentDAO sd = new StudentDAO();
    StudentBean sb = sd.findById(sid);

    if (sb == null) {
        out.println("<h2 style='color:red;'>Student details not found!</h2>");
        return;
    }
%>

<form action="update.jsp" method="post">
    <table width="60%">
        <tr>
            <td>SID: </td>
            <td><input type="text" name="sid" value="<%= sb.getSid() %>"></td>
        </tr>
        <tr>
            <td>NAME: </td>
            <td><input type="text" name="name" value="<%= sb.getName() %>"></td>
        </tr>
        <tr>
            <td>ENROLLMENT: </td>
            <td><input type="text" name="enroll" value="<%= sb.getEnroll() %>"></td>
        </tr>
        <tr>
            <td>ENROLLMENT DATE: </td>
            <td><input type="text" name="enrolld" value="<%= sb.getEnrolld() %>"></td>
        </tr>
        <tr>
            <td>D.O.B: </td>
            <td><input type="text" name="dob" value="<%= sb.getDob() %>"></td>
        </tr>
        <tr>
            <td>EMAIL: </td>
            <td><input type="text" name="email" value="<%= sb.getEmail() %>"></td>
        </tr>
        <tr>
            <td>COURSE: </td>
            <td><input type="text" name="course" value="<%= sb.getCourse() %>"></td>
        </tr>
        <tr>
            <td>COLLEGE NAME: </td>
            <td><input type="text" name="clg" value="<%= sb.getClg() %>"></td>
        </tr>
        <tr>
            <td>CITY NAME: </td>
            <td><input type="text" name="city" value="<%= sb.getCity() %>"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="Update Student"></td>
        </tr>
    </table>
</form>

     
  <!-- Footer Section -->
<footer style="background-color: rgba(0, 0, 0, 0.9); color: white; text-align: center; padding: 20px 0; margin-top: 65px;">
    <div style="max-width: 1200px; margin: auto; display: flex; flex-direction: column; align-items: center;">
        
        <p style="margin: 10px 0; color:white;">&copy; 2025 H.V.U College. All Rights Reserved.</p>
        
        <div style="display: flex; gap: 15px;">
            <a href="#" style="color: white; text-decoration: none;">Privacy Policy</a> |
            <a href="#" style="color: white; text-decoration: none;">Terms of Service</a> |
            <a href="contact.jsp" style="color: white; text-decoration: none;">Contact Us</a>
        </div>

        <div class="social-icons" style="margin-top: 10px;">
            <a href="https://www.facebook.com" style="color: white; margin: 0 10px;"><i class="fa-brands fa-facebook"></i></a>
            <a href="https://www.instagram.com" style="color: white; margin: 0 10px;"><i class="fa-brands fa-instagram"></i></a>
            <a href="https://www.twitter.com" style="color: white; margin: 0 10px;"><i class="fa-brands fa-twitter"></i></a>
            <a href="https://www.linkedin.com" style="color: white; margin: 0 10px;"><i class="fa-brands fa-linkedin"></i></a>
        </div>
    </div>
</footer>   
</body>
</html>
