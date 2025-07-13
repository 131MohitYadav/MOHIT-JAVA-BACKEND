<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Login Help - College Enrollment System</title>
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
            background: linear-gradient(to right, #00c6ff, #0072ff);
            display: flex;
            flex-direction: column;
        }

        /* NAVBAR */
        .navbar {
            height: 75px;
            background-color: rgba(0, 0, 0, 0.85);
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 20px;
        }

        .logo {
            color: darkorange;
            font-size: 30px;
            font-weight: bold;
        }

        .nav-center {
            flex: 1;
            display: flex;
            justify-content: center;
        }

        .menu ul {
            display: flex;
            list-style: none;
            gap: 25px;
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

        .nav-right {
            display: flex;
            gap: 12px;
        }

        .btn, .btn30 {
            padding: 8px 15px;
            border-radius: 15px;
            font-weight: bold;
            font-size: 14px;
            text-decoration: none;
            border: none;
            cursor: pointer;
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

        /* CONTENT */
        .main {
            display: flex;
            justify-content: center;
            align-items: center;
            flex: 1;
            padding: 20px;
        }

        .container {
            background: linear-gradient(to left, #0072ff, #00c6ff);
            width: 100%;
            max-width: 650px;
            border-radius: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
            padding: 30px 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .header-label {
            background-color: rgba(255, 165, 0, 0.9);
            color: white;
            padding: 12px;
            border-radius: 10px;
            margin-bottom: 20px;
            font-size: 24px;
            text-shadow: 1px 1px 3px black;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 15px;
            width: 100%;
        }

        label {
            font-size: 16px;
            color: #333;
            font-weight: bold;
        }

        input[type="text"] {
            padding: 10px;
            width: 80%;
            max-width: 300px;
            border: 1px solid #ccc;
            border-radius: 8px;
            outline: none;
        }

        input[type="submit"] {
            padding: 10px 20px;
            border: none;
            background-color: orange;
            color: white;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #e65100;
        }

        hr {
            margin: 20px 0;
            border: none;
            border-top: 1px solid #ddd;
        }

        table {
            width: 100%;
            margin-top: 15px;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            color: black;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: orange;
            color: white;
        }

        .back-btn {
            margin-top: 20px;
        }

        .back-btn button {
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            font-weight: bold;
            border-radius: 8px;
            border: none;
            cursor: pointer;
        }

        .back-btn button:hover {
            background-color: #1e88e5;
        }

        .back-btn a {
            text-decoration: none;
            color: white;
        }

        /* FOOTER */
        footer {
            background-color: rgba(0, 0, 0, 0.9);
            color: white;
            text-align: center;
            padding: 20px 0;
            margin-top: auto;
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
            margin: 0 8px;
            font-size: 20px;
        }

        footer p {
            margin: 20px;
        }
    </style>
</head>
<body>
    <!-- NAVBAR -->
    <div class="navbar">
        <div class="logo">H . V . U</div>
        <div class="nav-center">
            <div class="menu">
                <ul>
                    <li><a href="Index.jsp"><i class="fa-solid fa-home"></i> HOME</a></li>
                    <li><a href="#"><i class="fa-solid fa-align-left"></i> ABOUT</a></li>
                    <li><a href="findstudent.jsp"><i class="fa-brands fa-usps"></i> PROFILE</a></li>
                    <li><a href="#"><i class="fa-solid fa-paintbrush"></i> ADMISSION</a></li>
                    <li><a href="help.jsp"><i class="fa-solid fa-address-book"></i> HELP</a></li>
                </ul>
            </div>
        </div>
        <div class="nav-right">
            <a href="Facultylogin.jsp" class="btn30">FACULTY LOGIN</a>
            <a href="Admin.jsp" class="btn">ADMIN LOGIN</a>
        </div>
    </div>

    <!-- CONTENT -->
    <div class="main">
        <div class="container">
            <h2 class="header-label"> Student Login Help</h2>
            <form method="post">
                <label for="lid">Enter Login ID:</label>
                <input type="text" id="lid" name="lid" required><br>
                <input type="submit" value="Search">
            </form>

            <%
                String lidStr = request.getParameter("lid");
                if (lidStr != null && !lidStr.isEmpty()) {
                    try {
                        int lid = Integer.parseInt(lidStr);
                        com.mohit.dao.UsersDAO studentDAO = new com.mohit.dao.UsersDAO();
                        com.mohit.bean.UsersBean student = studentDAO.findById(lid);
                        if (student.getLid() != 0) {
            %>
                <hr>
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
                <button><a href="Index.jsp"> Back to Home</a></button>
            </div>
        </div>
    </div>

    <!-- FOOTER -->
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
