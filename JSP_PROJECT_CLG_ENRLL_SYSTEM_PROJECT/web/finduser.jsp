<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Student Login Help - College Enrollment System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        html, body {
            height: 100%;
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #00c6ff, #0072ff);
        }

        /* --- NAVBAR --- */
        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            height: 75px;
            width: 100%;
            background-color: rgba(0, 0, 0, 0.85);
            display: flex;
            align-items: center;
            padding: 0 40px;
            z-index: 1000;
        }

        .navbar-inner {
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            color: darkorange;
            font-size: 32px;
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
            gap: 35px;
        }

        .menu ul li a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            font-size: 16px;
            transition: 0.3s;
        }

        .menu ul li a:hover {
            color: orange;
        }

        .nav-right {
            flex-shrink: 0;
            display: flex;
            gap: 10px;
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

        .btn30 {
            background-color: white;
            color: blue;
            font-weight: bold;
            padding: 8px 15px;
            border-radius: 15px;
            font-size: 14px;
            text-decoration: none;
        }

        .btn30:hover {
            background-color: blue;
            color: white;
        }

        /* --- CONTENT --- */
        .content {
            margin-top: 75px;
            min-height: calc(100vh - 75px - 60px);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            width: 100%;
            max-width: 450px;
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        .container h2 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        form {
            margin: 20px auto;
        }

        label {
            font-size: 16px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"] {
            padding: 8px;
            width: 220px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            margin-top: 8px;
        }

        input[type="submit"] {
            padding: 10px 18px;
            border: none;
            background-color: #ff9800;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #e65100;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            color: black;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #ff9800;
            color: white;
            font-size: 18px;
        }

        .back-btn {
            margin-top: 20px;
        }

        .back-btn button {
            padding: 12px 25px;
            color: white;
            background-color: #3498db;
            font-weight: bold;
            border-radius: 8px;
            border: none;
            cursor: pointer;
        }

        .back-btn button:hover {
            background-color: #1e88e5;
        }

        .back-btn a {
            color: white;
            text-decoration: none;
        }

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

        footer .social-icons i {
            margin: 0 10px;
            font-size: 20px;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="navbar-inner">
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
            <div class="nav-right">
                <a href="Facultylogin.jsp" class="btn30">FACULTY LOGIN</a>
                <a href="Admin.jsp" class="btn">ADMIN LOGIN</a>
            </div>
        </div>
    </div>

    <!-- Page Content -->
    <div class="content">
        <div class="container">
            <h2>🔍 Student Login Help</h2>
            <form method="post">
                <label for="lid">Enter Login ID:</label><br>
                <input type="text" id="lid" name="lid" required>
                <input type="submit" value="Search">
            </form>
            <hr>

            <%
                String lidStr = request.getParameter("lid");
                if (lidStr != null && !lidStr.isEmpty()) {
                    try {
                        int lid = Integer.parseInt(lidStr);
                        com.mohit.dao.UsersDAO studentDAO = new com.mohit.dao.UsersDAO();
                        com.mohit.bean.UsersBean student = studentDAO.findById(lid);

                        if (student.getLid() != 0) {
            %>
                        <h3>Student Account Details</h3>
                        <table>
                            <tr><th>Name</th><td><%= student.getName() %></td></tr>
                            <tr><th>Username</th><td><%= student.getUsername() %></td></tr>
                            <tr><th>Password</th><td><%= student.getPassword() %></td></tr>
                        </table>
            <%
                        } else {
                            out.println("<p>❌ Student Not Found! Please check your ID.</p>");
                        }
                    } catch (NumberFormatException e) {
                        out.println("<p>⚠️ Invalid Login ID! Please enter a valid number.</p>");
                    }
                }
            %>

            <div class="back-btn">
                <button><a href="Index.jsp">🏠 Back to Home</a></button>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
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
    </footer>

</body>
</html>
