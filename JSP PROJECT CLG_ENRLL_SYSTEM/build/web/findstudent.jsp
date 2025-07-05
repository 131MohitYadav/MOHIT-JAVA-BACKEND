<%-- 
    Document   : findstudent
    Created on : 27 Mar, 2025, 9:22:24 PM
    Author     : yadav
--%>

<%@ page import="com.mohit.dao.StudentDAO" %>
<%@ page import="com.mohit.bean.StudentBean" %>
<%@ page import="com.mohit.dao.FacultyDAO" %>
<%@ page import="com.mohit.bean.FacultyBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Student</title>
    
     <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    
    <!-- Ionicons for Social Media Icons -->
    <script type="module" src="https://unpkg.com/@ionic/core/dist/ionic/ionic.esm.js"></script>
    
    <style>
        /* General Page Styling */
        
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

        
        
        

        /* Form Styling */
        form {
            background: lightskyblue;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            text-align: left;
        }

        label {
            font-weight: bold;
            margin-right: 10px;
            
        }

        input[type="text"] {
            padding: 8px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            padding: 8px 15px;
            border: none;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Table Styling */
        table {
            width: 60%;
            margin: 20px auto;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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

        /* Message Styling */
        p {
            font-size: 18px;
            color: red;
            margin: 10px;
        }
        
        .btn20 button{
            
            padding: 10px 25px;
            color: white;
            background-color: lightskyblue;
            font-weight:bold;
            border: 3px;
            border-radius: 15px;
            border: none;
            
        }
        .btn20 a{
            text-decoration: none;
            font-weight: bold;
            font-size: 15px;
            color:white;
            
        }
        .btn20 button:hover{
            background-color: blue;
            
        }
        
        h3{
            color:black;
            font-weight: bold;
            text-align: center;
            margin:10px;
        }
        h2{
            text-shadow:2px 2px 10px red;
            color:white;
            text-align: center;
            margin-top: 100px;
           
           
        }
        a{
            text-decoration: none;
        }
        
        .fp{
            margin: 20px;
            text-align: center;
          
        }
        
        .pr {
    margin: 20px auto;  /* Centering the div horizontally */
    padding: 15px;      /* Slightly more padding for better spacing */
    width: 700px;       /* Keeping the width same */
        background: linear-gradient(to left, #00c6ff, #0072ff);
    border-radius: 15px;
    border: none;
    text-align: center; 
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); 
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
    
    
    
    <div class='pr'>
    <h2>CHECK STUDENT PROFILE</h2>

    <!-- Search Form -->
    <div class="fp">
    <form method="post">
        <label for="sid">Enter Student ID:</label>
        <input type="text" id="sid" name="sid" required>
        <input type="submit" value="Search">
    </form>
    </div>
    
    <hr>

    <%
        // Retrieve the Student ID from the request
        String sidStr = request.getParameter("sid");

        if (sidStr != null && !sidStr.isEmpty()) {
            try {
                int sid = Integer.parseInt(sidStr);

                // Call findById() method
                StudentDAO studentDAO = new StudentDAO();
                StudentBean student = studentDAO.findById(sid);

                // If student exists (check if sid is not 0)
                if (student.getSid() != 0) {
    %>
                <h3>Student Details</h3>
                <table>
<!--                   <tr><th>Student ID</th><td><%= student.getSid() %></td></tr>-->
                   <tr><th>Name</th><td><%= student.getName() %></td></tr>
                   <tr><th>Enrollment</th><td><%= student.getEnroll() %></td></tr>
                   <tr><th>Enrollment Date</th><td><%= student.getEnrolld() %></td></tr>
                   <tr><th>Date of Birth</th><td><%= student.getDob() %></td></tr>
                   <tr><th>Email</th><td><%= student.getEmail() %></td></tr>
                   <tr><th>Course</th><td><%= student.getCourse() %></td></tr>
                   <tr><th>College</th><td><%= student.getClg() %></td></tr>
                   <tr><th>City</th><td><%= student.getCity() %></td></tr>
                </table>
    <%
                } else {
                    out.println("<p>Student Not Found!</p>");
                }
            } catch (NumberFormatException e) {
                out.println("<p>Invalid Student ID! Please enter a number.</p>");
            }
        }
    %>
<!--    <div class="btn20">
    <button><a href="Index.jsp"/>Home Page</button>
    </div>
    -->
    
    
    
    
    
    <h2>CHECK FACULTY PROFILE</h2>

    <!-- Search Form -->
    <div class="fp">
    <form method="post">
        <label for="fid">Enter Faculty ID:</label>
        <input type="text" id="fid" name="fid" required>
        <input type="submit" value="Search">
    </form>
</div>
    <hr>

    <%
        // Retrieve the Student ID from the request
        String fidStr = request.getParameter("fid");

        if (fidStr != null && !fidStr.isEmpty()) {
            try {
                int fid = Integer.parseInt(fidStr);

                // Call findById() method
                FacultyDAO fDAO = new FacultyDAO();
                FacultyBean faculty = fDAO.findById(fid);

                // If student exists (check if sid is not 0)
                if (faculty.getFid() != 0) {
    %>
                <h3>Faculty Details</h3>
                <table>
<!--                   <tr><th>Student ID</th><td><%= faculty.getFid() %></td></tr>-->
                   <tr><th>Name</th><td><%= faculty.getName() %></td></tr>
                   <tr><th>Gender</th><td><%= faculty.getGender() %></td></tr>
                   <tr><th>Dob</th><td><%= faculty.getDob() %></td></tr>
                   <tr><th>Hiredate</th><td><%= faculty.getHiredate() %></td></tr>
                   <tr><th>Email</th><td><%= faculty.getEmail() %></td></tr>
                   <tr><th>Department Name</th><td><%= faculty.getDept() %></td></tr>
                   <tr><th>Salary</th><td><%= faculty.getSalary() %></td></tr>
                   <tr><th>Designation</th><td><%= faculty.getDesi() %></td></tr>
                </table>
    <%
                } else {
                    out.println("<p>Faculty Not Found!</p>");
                }
            } catch (NumberFormatException e) {
                out.println("<p>Invalid Faculty ID! Please enter a number.</p>");
            }
        }
    %>
    
    </div>
    
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
