<%-- 
    Document   : Index
    Created on : 24 Mar, 2025, 3:37:24 PM
    Author     : yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Webpage Design</title>
    
    <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            color: black;
        }

        /* Navigation Bar */
        .navbar {
            width: 100%;
            height: 75px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 50px;
            background-color: rgba(0, 0, 0, 0.7);
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

        /* Main Content with Full-Width Background */
        .content {
            width:100%;
            height:650px; /* Adjust height as needed */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
            background: url('images/clg5.jpeg') no-repeat center center;
            background-size: cover;
            
        }

        .content h1 {
            font-size: 50px;
            color:whitesmoke;
            padding: 10px;
            border-radius: 5px;
            font-weight: bold;
            
        }

        .content span {
            color: red;
            font-weight: bold;
        }

        .content p {
            
            padding: 5px;
            border-radius: 5px;
            color:whitesmoke;
            font-weight: bold;
        }

        .cn {
            background: orange;
            padding: 10px 20px;
            border-radius: 10px;
            text-decoration: none;
            color: black;
            font-weight: bold;
            display: inline-block;
            margin-top: 20px;
        }

        .cn:hover {
            background: white;
        }

        /* Login Form */
        .form {
            width: 360px;
            background: rgba(0, 0, 0, 0.8);
            padding: 20px;
            border-radius: 10px;
            position: absolute;
            top: 120px;
            right: 50px;
            text-align: center;
        }

        .form h2 {
            background: white;
            color: black;
            padding: 10px;
            border-radius: 10px;
            transition: 0.4s;
        }

        .form h2:hover {
            background: orange;
        }

        .form input {
            width: 100%;
            padding: 8px;
            margin-top: 35px;
            border: none;
            border-bottom: 1px solid orange;
            background: transparent;
            color: white;
            font-size: 16px;
        }

        .btnn {
            width: 100%;
            background: orange;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            color: white;
            font-weight: bold;
            margin-top: 35px;
            
        }

        .btnn:hover {
            background: white;
            color: orange;
        }

        .form a {
            color: orange;
            text-decoration: none;
            margin-top: 35px;
        }

        .icons a {
            color: white;
            font-size: 25px;
            margin: 10px;
        }

        .icons a:hover {
            color: orange;
        }
        
        .link{
            color: white;
            margin-top: 15px;
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
                <li><a href="#"><i class="fa-solid fa-home"></i> HOME</a></li>
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
    
    
    <!-- Main Content with Full-Width Background -->
    <div class="content">
        <h1>Welcome to <br><span>College Enrollment System</span></h1>
        <p>Apply for admission and manage your enrollment process online</p>
        <a href="enroll.jsp" class="cn">Enroll Now</a>
    </div>

    <!-- Login Form -->
    <div class="form">
        <h2> Student Login Here</h2>
        <form action="logincontrol.jsp" method="post">
        <input type="text" name="un" placeholder="Enter Username">
        <input type="password" name="ps" placeholder="Enter Password">
        <button class="btnn">Login</button>
        
        <p class="link">Don't have an account?<br>
        <a href="register.jsp">Sign up here</a></p>
        
        <p>Log in with</p>
        <div class="icons">
            <a href="https://www.facebook.com"><i class="fa-brands fa-facebook"></i></a>
            <a href="https://www.instagram.com"><i class="fa-brands fa-instagram"></i></a>
            <a href="https://www.twitter.com"><i class="fa-brands fa-twitter"></i></a>
            <a href="https://www.google.com"><i class="fa-brands fa-google"></i></a>
            <a href="https://www.skype.com"><i class="fa-brands fa-skype"></i></a>
        </div>
        </form>
    </div>
    
    
    <!-- Footer Section -->
<footer style="background-color: rgba(0, 0, 0, 0.9); color: white; text-align: center; padding: 20px 0; margin-top: 0px;">
    <div style="max-width: 1200px; margin:auto; display: flex; flex-direction: column; align-items: center;">
        
        <p style="margin: 10px 0;">&copy; 2025 H.V.U College. All Rights Reserved.</p>
        
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
