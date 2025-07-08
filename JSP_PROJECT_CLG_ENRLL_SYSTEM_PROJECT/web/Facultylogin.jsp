<%-- 
    Document   : Facultylogin
    Created on : 1 Apr, 2025, 12:16:42 PM
    Author     : yadav
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Faculty Login</title>

    <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            height: 100%;
            font-family: Arial, sans-serif;
        }

        body {
            background: linear-gradient(to right, #ff9966, #ff5e62);
            display: flex;
            flex-direction: column;
        }

        /* Navbar */
        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 75px;
            background-color: rgba(0, 0, 0, 0.7);
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 50px;
            z-index: 1000;
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
            text-decoration: none;
        }

        .btn:hover {
            background: white;
            color: red;
        }

        /* Page content container below navbar */
        .content {
            flex: 1;
            margin-top: 75px; /* navbar height */
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        /* Form styling */
        .form {
            width: 360px;
            background: rgba(0, 0, 0, 0.85);
            padding: 25px;
            border-radius: 10px;
            text-align: center;
            color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .form h2 {
            background: white;
            color: black;
            padding: 10px;
            border-radius: 10px;
            transition: 0.4s;
            margin-bottom: 20px;
        }

        .form h2:hover {
            background: orange;
            color: white;
        }

        .form input {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            border: none;
            border-bottom: 1px solid orange;
            background: transparent;
            color: white;
            font-size: 16px;
        }

        .form input::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .btnn {
            width: 100%;
            background: orange;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            color: white;
            font-weight: bold;
            margin-top: 15px;
            border: none;
            transition: 0.3s;
        }

        .btnn:hover {
            background: white;
            color: orange;
        }

        .icons a {
            color: white;
            font-size: 25px;
            margin: 10px;
            transition: 0.3s;
        }

        .icons a:hover {
            color: orange;
        }

        .link {
            color: white;
            margin-top: 15px;
        }

        a {
            text-decoration: none;
        }

        /* Footer styling */
        footer {
            background-color: rgba(0, 0, 0, 0.9);
            color: white;
            text-align: center;
            padding: 20px 0;
        }

        footer a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }

        footer a:hover {
            color: orange;
        }
    </style>
</head>
<body>

    
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
        <a href="Admin.jsp" class="btn">ADMIN LOGIN</a>
    </div>

    <!-- Page Content -->
    <div class="content">
        <div class="form">
            <h2>Faculty Login Here</h2>
            <form action="flogincontrol.jsp" method="post">
                <input type="text" name="un" placeholder="Enter Username" required>
                <input type="password" name="ps" placeholder="Enter Password" required>
                <button type="submit" class="btnn">Sign In</button>
            </form>
            <p class="link">Don't have an account?</p>
            <button class="btnn" onclick="window.location.href='Facultyregister.jsp'">Sign Up</button>
            <p style="margin: 15px;">Log in with</p>
            <div class="icons">
                <a href="https://www.facebook.com"><i class="fa-brands fa-facebook"></i></a>
                <a href="https://www.instagram.com"><i class="fa-brands fa-instagram"></i></a>
                <a href="https://www.twitter.com"><i class="fa-brands fa-twitter"></i></a>
                <a href="https://www.google.com"><i class="fa-brands fa-google"></i></a>
                <a href="https://www.skype.com"><i class="fa-brands fa-skype"></i></a>
            </div>
        </div>
    </div>

   
    <footer>
        <div>
            <p>&copy; 2025 H.V.U College. All Rights Reserved.</p>
            <div>
                <a href="#">Privacy Policy</a> |
                <a href="#">Terms of Service</a> |
                <a href="contact.jsp">Contact Us</a>
            </div>
            <div class="social-icons" style="margin-top: 10px;">
                <a href="https://www.facebook.com"><i class="fa-brands fa-facebook"></i></a>
                <a href="https://www.instagram.com"><i class="fa-brands fa-instagram"></i></a>
                <a href="https://www.twitter.com"><i class="fa-brands fa-twitter"></i></a>
                <a href="https://www.linkedin.com"><i class="fa-brands fa-linkedin"></i></a>
            </div>
        </div>
    </footer>
</body>
</html>
