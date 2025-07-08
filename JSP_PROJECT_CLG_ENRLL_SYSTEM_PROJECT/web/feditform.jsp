<%@page import="com.mohit.bean.FacultyBean"%>
<%@page import="com.mohit.dao.FacultyDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Faculty Update Form</title>

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
            background: linear-gradient(to right, #00c6ff, #0072ff);
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
            padding: 8px 15px;
            border-radius: 15px;
            text-decoration: none;
            font-weight: bold;
            font-size: 14px;
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

        .form-box {
            width: 90%;
            max-width: 700px;
            background-color: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(5px);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 0 15px rgba(0,0,0,0.3);
        }

        .form-box h1 {
            color: lightblue;
            text-shadow: 2px 2px 8px blue;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        td {
            padding: 10px;
            text-align: left;
            color: white;
            font-weight: bold;
        }

        input[type="text"] {
            width: 95%;
            padding: 10px;
            border: none;
            border-radius: 8px;
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
            box-shadow: 2px 2px 5px rgba(0,0,0,0.3);
            transition: 0.3s;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
            box-shadow: 2px 2px 10px rgba(0,0,0,0.4);
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
        <div class="form-box">
            <h1>FACULTY UPDATE FORM</h1>

            <%
                int fid = Integer.parseInt(request.getParameter("fid"));
                FacultyDAO sd = new FacultyDAO();
                FacultyBean sb = sd.findById(fid);

                if (sb == null) {
                    out.println("<h2 style='color:red;'>Faculty details not found!</h2>");
                    return;
                }
            %>

            <form action="fupdate.jsp" method="post">
                <table>
                    <tr><td>FID:</td><td><input type="text" name="fid" value="<%= sb.getFid() %>"></td></tr>
                    <tr><td>NAME:</td><td><input type="text" name="name" value="<%= sb.getName() %>"></td></tr>
                    <tr><td>GENDER:</td><td><input type="text" name="gen" value="<%= sb.getGender() %>"></td></tr>
                    <tr><td>D.O.B:</td><td><input type="text" name="dob" value="<%= sb.getDob() %>"></td></tr>
                    <tr><td>HIRE DATE:</td><td><input type="text" name="hired" value="<%= sb.getHiredate() %>"></td></tr>
                    <tr><td>EMAIL:</td><td><input type="text" name="email" value="<%= sb.getEmail() %>"></td></tr>
                    <tr><td>DEPARTMENT NAME:</td><td><input type="text" name="dept" value="<%= sb.getDept() %>"></td></tr>
                    <tr><td>SALARY:</td><td><input type="text" name="sal" value="<%= sb.getSalary() %>"></td></tr>
                    <tr><td>DESIGNATION:</td><td><input type="text" name="desi" value="<%= sb.getDesi() %>"></td></tr>
                </table>
                <input type="submit" value="Update Faculty">
            </form>
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
