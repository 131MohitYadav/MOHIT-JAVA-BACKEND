<%@ page import="com.mohit.dao.Users2DAO" %>
<%@ page import="com.mohit.bean.Users2Bean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Faculty Login Help - College Enrollment System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to left, #ff7e5f, #feb47b);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .navbar {
            width: 100%;
            height: 75px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 30px;
            background-color: rgba(0, 0, 0, 0.9);
            flex-wrap: wrap;
        }

        .logo {
            color: darkorange;
            font-size: 30px;
            font-weight: bold;
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
            align-items: center;
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
            margin-left: 10px;
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

        /* CENTER the container in page body */
        .main {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: linear-gradient(to right, #feb47b, #ff7e5f);
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
            background-color: orange;
            color: white;
            font-size: 22px;
            font-weight: bold;
            padding: 10px 25px;
            border-radius: 15px;
            margin-bottom: 25px;
            text-align: center;
            box-shadow: 0 2px 6px rgba(0,0,0,0.2);
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
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
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
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
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
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            font-weight: bold;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .back-btn button:hover {
            background-color: #1e88e5;
        }

        .back-btn a {
            text-decoration: none;
            color: white;
            font-size: 16px;
            font-weight: bold;
        }

        h3 {
            margin: 15px 0 10px 0;
            color: #333;
        }

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

    <!-- MAIN Content Centered -->
    <div class="main">
        <div class="container">
            <div class="header-label"> Faculty Login Help</div>
            <form method="post">
                <label for="lid">Enter Login ID:</label>
                <input type="text" id="lid" name="lid" required>
                <input type="submit" value="Search">
            </form>
            <hr>
            <%
                String lidStr = request.getParameter("lid");
                if (lidStr != null && !lidStr.isEmpty()) {
                    try {
                        int lid = Integer.parseInt(lidStr);
                        Users2DAO studentDAO = new Users2DAO();
                        Users2Bean student = studentDAO.findById(lid);
                        if (student.getLid() != 0) {
            %>
                        <h3>Faculty Account Details</h3>
                        <table>
                            <tr><th>Name</th><td><%= student.getName() %></td></tr>
                            <tr><th>Username</th><td><%= student.getUsername() %></td></tr>
                            <tr><th>Password</th><td><%= student.getPassword() %></td></tr>
                        </table>
            <%
                        } else {
                            out.println("<p>❌ Faculty Not Found! Please check your ID.</p>");
                        }
                    } catch (NumberFormatException e) {
                        out.println("<p>⚠️ Invalid Login ID! Please enter a valid number.</p>");
                    }
                }
            %>
            <div class="back-btn">
                <button><a href="Index.jsp">Back to Home</a></button>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <div style="max-width: 1200px; margin: auto; display: flex; flex-direction: column; align-items: center;">
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
