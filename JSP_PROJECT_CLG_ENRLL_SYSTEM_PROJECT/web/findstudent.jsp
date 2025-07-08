<%@ page import="com.mohit.dao.StudentDAO" %>
<%@ page import="com.mohit.bean.StudentBean" %>
<%@ page import="com.mohit.dao.FacultyDAO" %>
<%@ page import="com.mohit.bean.FacultyBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Check Student & Faculty Profile</title>
    <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            color: black;
            background: linear-gradient(to right, #00c6ff, #0072ff);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Navbar */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            height: 75px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 50px;
            background-color: rgba(0, 0, 0, 0.7);
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

     .login-buttons {
      display: flex;
      gap: 10px;
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
      background-color: orange;
      color: white;
    }

    .btn:hover {
      background-color: white;
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


        .content {
            flex: 1;
            margin-top: 90px;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding: 20px;
        }

        .card {
            background-color: lightblue;
            width: 90%;
            max-width: 800px;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.3);
        }

        h2 {
            text-align: center;
            color: white;
            text-shadow: 2px 2px 8px blue;
            margin-bottom: 20px;
        }

        form {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: inset 0 0 5px rgba(0,0,0,0.2);
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: black;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            margin-bottom: 15px;
            box-shadow: inset 2px 2px 5px rgba(0, 0, 0, 0.2);
        }

        input[type="submit"] {
            font-weight: bold;
            background-color: #007bff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: orange;
            color: white;
        }

        p {
            text-align: center;
            color: red;
            font-weight: bold;
            margin-top: 10px;
        }

        footer {
            background-color: rgba(0, 0, 0, 0.9);
            color: white;
            text-align: center;
            padding: 20px 0;
            margin-top: 30px;
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
            color: white;
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
        <div class="login-buttons">
      <a href="Facultylogin.jsp" class="btn30">FACULTY LOGIN</a>
      <a href="Admin.jsp" class="btn">ADMIN LOGIN</a>
    </div>
    </div>

    <!-- Content -->
    <div class="content">
        <div class="card">
            <h2>CHECK STUDENT PROFILE</h2>
            <form method="post">
                <label for="sid">Enter Student ID:</label>
                <input type="text" id="sid" name="sid" required>
                <input type="submit" value="Search Student">
            </form>

            <%
                String sidStr = request.getParameter("sid");
                if (sidStr != null && !sidStr.isEmpty()) {
                    try {
                        int sid = Integer.parseInt(sidStr);
                        StudentDAO studentDAO = new StudentDAO();
                        StudentBean student = studentDAO.findById(sid);

                        if (student.getSid() != 0) {
            %>
                <table>
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

            <hr style="margin: 30px 0; border-color: white;">

            <h2>CHECK FACULTY PROFILE</h2>
            <form method="post">
                <label for="fid">Enter Faculty ID:</label>
                <input type="text" id="fid" name="fid" required>
                <input type="submit" value="Search Faculty">
            </form>

            <%
                String fidStr = request.getParameter("fid");
                if (fidStr != null && !fidStr.isEmpty()) {
                    try {
                        int fid = Integer.parseInt(fidStr);
                        FacultyDAO fDAO = new FacultyDAO();
                        FacultyBean faculty = fDAO.findById(fid);

                        if (faculty.getFid() != 0) {
            %>
                <table>
                   <tr><th>Name</th><td><%= faculty.getName() %></td></tr>
                   <tr><th>Gender</th><td><%= faculty.getGender() %></td></tr>
                   <tr><th>DOB</th><td><%= faculty.getDob() %></td></tr>
                   <tr><th>Hire Date</th><td><%= faculty.getHiredate() %></td></tr>
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
    </div>

    <!-- Footer -->
    <footer>
        <p class="copyright">&copy; 2025 H.V.U College. All Rights Reserved.</p>
        <div>
            <a href="#">Privacy Policy</a> |
            <a href="#">Terms of Service</a> |
            <a href="contact.jsp">Contact Us</a>
        </div>
        <div style="margin-top: 10px;">
            <a href="https://www.facebook.com"><i class="fa-brands fa-facebook"></i></a>
            <a href="https://www.instagram.com"><i class="fa-brands fa-instagram"></i></a>
            <a href="https://www.twitter.com"><i class="fa-brands fa-twitter"></i></a>
            <a href="https://www.linkedin.com"><i class="fa-brands fa-linkedin"></i></a>
        </div>
    </footer>
</body>
</html>
