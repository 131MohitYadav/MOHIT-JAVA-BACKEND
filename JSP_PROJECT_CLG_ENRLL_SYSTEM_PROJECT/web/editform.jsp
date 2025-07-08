<%@page import="com.mohit.bean.StudentBean"%>
<%@page import="com.mohit.dao.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Update Form</title>

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
            background: linear-gradient(to right, #00c6ff, #0072ff);
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
        }

        .form-container {
            width: 90%;
            max-width: 800px;
            background: rgba(255, 255, 255, 0.9);
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        .form-container h1 {
            color: #0072ff;
            text-shadow: 1px 1px 3px #0056b3;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 12px;
            text-align: left;
            font-weight: bold;
        }

        input[type="text"] {
            width: 95%;
            padding: 10px;
            border: 1px solid #0072ff;
            border-radius: 8px;
            background-color: #f0f8ff;
            box-shadow: inset 1px 1px 3px rgba(0,0,0,0.1);
        }

        input[type="submit"] {
            width: 100%;
            background-color: #0072ff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            transition: 0.3s;
            margin-top: 15px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        a {
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
        <div>
            <a href="Facultylogin.jsp" class="btn">FACULTY LOGIN</a>
            <a href="Admin.jsp" class="btn">ADMIN LOGIN</a>
        </div>
    </div>

    <!-- Page Content -->
    <div class="content">
        <div class="form-container">
            <%
                int sid = Integer.parseInt(request.getParameter("sid"));
                StudentDAO sd = new StudentDAO();
                StudentBean sb = sd.findById(sid);

                if (sb == null) {
            %>
                <h2 style="color:red;">Student details not found!</h2>
            <%
                } else {
            %>
                <h1>STUDENT UPDATE FORM</h1>
                <form action="update.jsp" method="post">
                    <table>
                        <tr>
                            <td>SID:</td>
                            <td><input type="text" name="sid" value="<%= sb.getSid() %>"></td>
                        </tr>
                        <tr>
                            <td>NAME:</td>
                            <td><input type="text" name="name" value="<%= sb.getName() %>"></td>
                        </tr>
                        <tr>
                            <td>ENROLLMENT:</td>
                            <td><input type="text" name="enroll" value="<%= sb.getEnroll() %>"></td>
                        </tr>
                        <tr>
                            <td>ENROLLMENT DATE:</td>
                            <td><input type="text" name="enrolld" value="<%= sb.getEnrolld() %>"></td>
                        </tr>
                        <tr>
                            <td>D.O.B:</td>
                            <td><input type="text" name="dob" value="<%= sb.getDob() %>"></td>
                        </tr>
                        <tr>
                            <td>EMAIL:</td>
                            <td><input type="text" name="email" value="<%= sb.getEmail() %>"></td>
                        </tr>
                        <tr>
                            <td>COURSE:</td>
                            <td><input type="text" name="course" value="<%= sb.getCourse() %>"></td>
                        </tr>
                        <tr>
                            <td>COLLEGE NAME:</td>
                            <td><input type="text" name="clg" value="<%= sb.getClg() %>"></td>
                        </tr>
                        <tr>
                            <td>CITY NAME:</td>
                            <td><input type="text" name="city" value="<%= sb.getCity() %>"></td>
                        </tr>
                    </table>
                    <input type="submit" value="Update Student">
                </form>
            <%
                }
            %>
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
