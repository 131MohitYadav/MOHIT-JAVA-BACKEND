<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>STUDENT ENROLLMENT</title>
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
            background: linear-gradient(to right, #00c6ff, #0072ff);
            display: flex;
            flex-direction: column;
        }

        /* NAVBAR */
        .navbar {
            width: 100%;
            height: 75px;
            background-color: rgba(0, 0, 0, 0.85);
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }

        .logo {
            color: darkorange;
            font-size: 28px;
            font-weight: bold;
            flex-shrink: 0;
        }

        .menu {
            flex: 1;
            display: flex;
            justify-content: center;
        }

        .menu ul {
            display: flex;
            list-style: none;
            gap: 30px;
            flex-wrap: wrap;
            justify-content: center;
            margin: 0;
            padding: 0;
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

        .nav-buttons {
            display: flex;
            gap: 10px;
            flex-shrink: 0;
        }

        .btn, .btn30 {
            border: none;
            border-radius: 15px;
            cursor: pointer;
            font-weight: bold;
            font-size: 14px;
            padding: 8px 15px;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }

        .btn {
            background: orange;
            color: white;
        }

        .btn:hover {
            background: white;
            color: red;
        }

        .btn30 {
            background-color: white;
            color: blue;
        }

        .btn30:hover {
            background-color: blue;
            color: white;
        }

        /* MAIN CONTENT */
        .main-content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding-top: 130px;   /* increased from 100px to 130px for extra top margin */
            padding-bottom: 40px;
        }

        .form {
            width: 90%;
            max-width: 650px;  /* increased from 500px to 650px for more width */
            background: rgba(0, 0, 0, 0.85);
            padding: 25px;
            border-radius: 12px;
            text-align: center;
            color: white;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.4);
        }

        .form h2 {
            background: white;
            color: black;
            padding: 12px;
            border-radius: 10px;
            transition: 0.4s;
            margin-bottom: 20px;
        }

        .form h2:hover {
            background: orange;
        }

        table {
            width: 100%;
            margin-top: 10px;
            border-collapse: separate;
            border-spacing: 10px;
        }

        td {
            text-align: left;
            color: #ddd;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.9);
            color: black;
            outline: none;
        }

        input[type="submit"] {
            background-color: orange;
            font-weight: bold;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background-color: white;
            color: orange;
        }

        .message {
            text-align: center;
            font-weight: bold;
            color: green;
            margin-top: 10px;
        }

        a {
            text-decoration: none;
        }

        /* FOOTER */
        footer {
            background-color: rgba(0, 0, 0, 0.95);
            color: white;
            text-align: center;
            padding: 20px 10px;
        }

        footer a {
            color: white;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }

        .social-icons a {
            margin: 0 10px;
        }
    </style>
</head>
<body>

    <!-- NAVBAR -->
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
        <div class="nav-buttons">
            <a href="Facultylogin.jsp" class="btn30">FACULTY LOGIN</a>
            <a href="Admin.jsp" class="btn">ADMIN LOGIN</a>
        </div>
    </div>

    <!-- MAIN CONTENT -->
    <div class="main-content">
        <div class="form">
            <h2>STUDENT ENROLLMENT FORM</h2>
            <form action="save2.jsp">
                <table>
                    <tr><td>SID:</td><td><input type="text" name="sid"></td></tr>
                    <tr><td>NAME:</td><td><input type="text" name="name"></td></tr>
                    <tr><td>ENROLLMENT:</td><td><input type="text" name="enroll"></td></tr>
                    <tr><td>ENROLLMENT DATE:</td><td><input type="text" name="enrolld"></td></tr>
                    <tr><td>D.O.B:</td><td><input type="text" name="dob"></td></tr>
                    <tr><td>EMAIL ID:</td><td><input type="text" name="email"></td></tr>
                    <tr><td>COURSE:</td><td><input type="text" name="mobile"></td></tr>
                    <tr><td>COLLEGE NAME:</td><td><input type="text" name="clg"></td></tr>
                    <tr><td>CITY NAME:</td><td><input type="text" name="city"></td></tr>
                    <tr><td colspan="2"><input type="submit" value="SUBMIT"></td></tr>
                </table>
            </form>

            <% 
                String message = request.getParameter("message");
                if ("success".equals(message)) { 
            %>
                <div class="message">Student Added Successfully! Redirecting to login...</div>
                <script>
                    setTimeout(function() {
                        window.location.href = 'Index.jsp';
                    }, 2000);
                </script>
            <% } %>
        </div>
    </div>

    <!-- FOOTER -->
    <footer>
        <div style="max-width: 100%; margin: auto; display: flex; flex-direction: column; align-items: center;">
            <p>&copy; 2025 H.V.U College. All Rights Reserved.</p>
            <div style="display: flex; gap: 15px; flex-wrap: wrap; justify-content: center;">
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
