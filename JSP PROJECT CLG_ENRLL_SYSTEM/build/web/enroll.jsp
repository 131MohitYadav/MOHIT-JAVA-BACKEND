<%-- 
    Document   : enroll
    Created on : 4 Apr, 2025, 2:44:08 AM
    Author     : yadav
--%>
<%-- 
    Document   : enroll
    Created on : 28 Mar, 2025, 4:51:56 PM
    Author     : Mohit Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enroll - College Enrollment System</title>
        
     <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
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

        /* Background & Content Styling */
        body {
            background: linear-gradient(to left, #4facfe, #00f2fe);
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
            color: white;
        }

        /* Main Heading */
        h1 {
            color:black;
            margin-top: 100px;
            font-size: 36px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        }

        /* Info Box */
        .info-box {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
             background: linear-gradient(to right, #4facfe, #00f2fe);
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            font-weight: bold;
            font-size:20px;
        }

        /* Button Container */
        .btn-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
        }

        /* Button Styling */
        .enroll-btn {
            background: white;
            border: none;
            padding: 14px 30px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .enroll-btn a {
            text-decoration: none;
            color: #333;
            display: block;
            width: 100%;
            height: 100%;
        }

        .enroll-btn:hover {
            background: #ff9800;
            color: white;
        }

        .enroll-btn:hover a {
            color: white;
        }

        a {
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

        <a href="Facultylogin.jsp" class="btn30">FACULTY LOGIN</a>
        <a href="Admin.jsp" class="btn">ADMIN LOGIN</a>
    </div>
     
    <!-- Enrollment Section -->
    <h1>Enroll Student & Faculty</h1>
    <div class="info-box">
        <p>Welcome to the <strong style="color:orange;">College Enrollment System</strong> Enrollment Page.</p>
        <p>If you want to enroll as a Student or Faculty, please select the appropriate option below.</p>
    </div>

    <div class="btn-container">
        <button class="enroll-btn"><a href="register.jsp">Enroll as Student</a></button>
        <button class="enroll-btn"><a href="Facultyregister.jsp">Enroll as Faculty</a></button>
    </div>
           
    <!-- Footer Section -->
    <footer style="background-color: rgba(0, 0, 0, 0.9); color: white; text-align: center; padding: 20px 0; margin-top: 230px;">
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
