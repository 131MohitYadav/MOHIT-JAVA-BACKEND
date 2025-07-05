<%@ page import="com.mohit.dao.UsersDAO" %>
<%@ page import="com.mohit.bean.UsersBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Login Help - College Enrollment System</title>
    
     
         
     <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    
    
    <style>
        /* Gradient Background */
             
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

        
        
/*        
        
        body {
            font-family: Arial, sans-serif;
              background: linear-gradient(to right, #4facfe, #00f2fe);

            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }*/

        /* Centered Box with Lined Gradient */
        .container {
            width: 50%;
            background: linear-gradient(to left, #00c6ff, #0072ff);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            backdrop-filter: blur(10px);
            margin: 80px auto;
        }

        /* Title Styling */
        h2 {
            color: #ffffff;
            text-shadow: 2px 2px 8px #ff5733;
            font-size: 26px;
        }

        /* Form Styling */
        form {
            margin:20px auto ;
        }

        label {
            font-size: 18px;
            color: #ffffff;
            font-weight: bold;
        }

        input[type="text"] {
            padding: 8px;
            width: 220px;
            border: none;
            border-radius: 5px;
            outline: none;
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
        }

        input[type="submit"]:hover {
            background-color: #e65100;
        }

        /* Table Styling */
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

        /* Back Button */
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

        .back-btn a {
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            color: white;
        }

        .back-btn button:hover {
            background-color: #1e88e5;
        }
        
        h3{
            margin: 10px;
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
    
    
    
    
    
    
    <div class="container">
        <h2>🔍 Student Login Help</h2>

        <!-- Search Form -->
        <form method="post">
            <label for="sid">Enter Login ID:</label>
            <input type="text" id="lid" name="lid" required>
            <input type="submit" value="Search">
        </form>

        <hr>

        <%
            // Retrieve the Login ID from the request
            String lidStr = request.getParameter("lid");

            if (lidStr != null && !lidStr.isEmpty()) {
                try {
                    int lid = Integer.parseInt(lidStr);

                    // Call findById() method
                    UsersDAO studentDAO = new UsersDAO();
                    UsersBean student = studentDAO.findById(lid);

                    // If student exists
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

        <!-- Back to Home Page Button -->
        <div class="back-btn">
            <button><a href="Index.jsp">🏠 Back to Home</a></button>
        </div>
    </div>
        
        <!-- Footer Section -->
<footer style="background-color: rgba(0, 0, 0, 0.9); color: white; text-align: center; padding: 20px 0; margin-top: 260px;">
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
