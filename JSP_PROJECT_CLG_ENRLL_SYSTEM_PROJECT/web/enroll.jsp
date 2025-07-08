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

        html, body {
            height: 100%;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            flex-direction: column;
            background: linear-gradient(to left, #4facfe, #00f2fe);
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
            margin-left: 10px;
        }

        .btn:hover {
            background: white;
            color: red;
        }

        .content {
            flex: 1;
            margin-top: 75px;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            text-align: center;
            color: white;
        }

        .box {
            max-width: 600px;
            background: rgba(255, 255, 255, 0.15);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(5px);
        }

        .box h1 {
            color: black;
            margin-bottom: 20px;
            font-size: 36px;
            text-shadow: 2px 2px 5px rgba(0,0,0,0.2);
        }

        .info-text {
            font-weight: bold;
            font-size: 20px;
            margin-bottom: 30px;
            color: white;
        }

        .info-text strong {
            color: orange;
        }

        .btn-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .enroll-btn {
            background: white;
            border: none;
            padding: 14px 30px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            color: #333;
            display: inline-block;
        }

        .enroll-btn:hover {
            background: #ff9800;
            color: white;
        }

        footer {
            background-color: rgba(0, 0, 0, 0.9);
            color: white;
            text-align: center;
            padding: 20px 0;
        }

        footer a {
            color: white;
            margin: 0 10px;
            text-decoration: none;
        }

        footer a:hover {
            color: orange;
        }
        
          footer p{
            margin: 20px;
        }

    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">H . V . U</div>
        <div class="menu">
            <ul>
                <li><a href="Index.jsp"><i class="fa-solid fa-home"></i> HOME</a></li>
                <li><a href="#"><i class="fa-solid fa-align-left"></i> ABOUT</a></li>
                <li><a href="findstudent.jsp"><i class="fa-brands fa-usps"></i> PROFILE</a></li>
                <li><a href="#"><i class="fa-solid fa-paintbrush"></i> ADMISSION</a></li>
                <li><a href="help.jsp"><i class="fa-solid fa-address-book"></i> HELP</a></li>
            </ul>
        </div>
        <div>
            <a href="Facultylogin.jsp" class="btn">FACULTY LOGIN</a>
            <a href="Admin.jsp" class="btn">ADMIN LOGIN</a>
        </div>
    </div>

    <!-- Page Content -->
    <div class="content">
        <div class="box">
            <h1>Enroll Student & Faculty</h1>
            <div class="info-text">
                <p>Welcome to the <strong>College Enrollment System</strong> Enrollment Page.</p>
                <p>If you want to enroll as a Student or Faculty, please select the appropriate option below.</p>
            </div>
            <div class="btn-container">
                <a href="register.jsp" class="enroll-btn">Enroll as Student</a>
                <a href="Facultyregister.jsp" class="enroll-btn">Enroll as Faculty</a>
            </div>
        </div>
    </div>

    <!-- Footer -->
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
