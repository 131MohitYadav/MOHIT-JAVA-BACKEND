<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>College Enrollment System</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />

  <style>
    /* Reset & Base Layout */
    html, body {
      height: 100%;
      margin: 0;
      font-family: Arial, sans-serif;
    }

    body {
      display: flex;
      flex-direction: column;
    }

    /* Navbar */
    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      background-color: rgba(0, 0, 0, 0.8);
      padding: 10px 30px;
      height: 75px;
    }

    .logo {
      color: darkorange;
      font-size: 35px;
      font-weight: bold;
    }

    .menu ul {
      display: flex;
      gap: 20px;
      list-style: none;
      margin: 0;
      padding: 0;
    }

    .menu ul li a {
      color: white;
      text-decoration: none;
      font-weight: bold;
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

    /* Main Section */
    .content {
      flex: 1;
      background: url('images/clg5.jpeg') no-repeat center center;
      background-size: cover;
      position: relative;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      text-align: center;
      color: white;
      padding: 30px;
    }

    .content h1 {
      font-size: 50px;
      font-weight: bold;
      color: whitesmoke;
    }

    .content span {
      color: red;
    }

    .content p {
      font-weight: bold;
      color: whitesmoke;
    }

    .cn {
      background-color: orange;
      color: black;
      padding: 10px 20px;
      margin-top: 20px;
      border-radius: 10px;
      text-decoration: none;
      font-weight: bold;
    }

    .cn:hover {
      background-color: white;
    }

    /* Login Form */
    .form {
      position: absolute;
      top: 20%;
      right: 50px;
      width: 360px;
      background: rgba(0, 0, 0, 0.85);
      padding: 20px;
      border-radius: 10px;
      color: white;
    }

    .form h2 {
      background: white;
      color: black;
      padding: 10px;
      border-radius: 10px;
      margin-bottom: 20px;
    }

    .form input {
      width: 100%;
      padding: 10px;
      margin: 15px 0;
      background: transparent;
      border: none;
      border-bottom: 1px solid orange;
      color: white;
      font-size: 16px;
    }

    .btnn {
      width: 100%;
      background: orange;
      padding: 10px;
      margin-top: 20px;
      border: none;
      border-radius: 5px;
      font-weight: bold;
      color: white;
      cursor: pointer;
    }

    .btnn:hover {
      background: white;
      color: orange;
    }

    .link {
      margin-top: 15px;
    }

    .link a {
      color: orange;
      text-decoration: none;
    }

    .icons a {
      color: white;
      font-size: 22px;
      margin: 10px;
      display: inline-block;
    }

    .icons a:hover {
      color: orange;
    }

    /* Footer */
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
    <div class="logo">H . V . U</div>
    <div class="menu">
      <ul>
        <li><a href="#"><i class="fa-solid fa-home"></i> HOME</a></li>
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

  <!-- Main Content -->
  <div class="content">
    <h1>Welcome to <br /><span>College Enrollment System</span></h1>
    <p>Apply for admission and manage your enrollment process online</p>
    <a href="enroll.jsp" class="cn">Enroll Now</a>

    <!-- Login Form -->
    <div class="form">
      <h2>Student Login Here</h2>
      <form action="logincontrol.jsp" method="post">
        <input type="text" name="un" placeholder="Enter Username" />
        <input type="password" name="ps" placeholder="Enter Password" />
        <button class="btnn">Login</button>
        <p class="link">Don't have an account?<br /><a href="register.jsp">Sign up here</a></p>
        <p>Log in with</p>
        <div class="icons">
          <a href="https://facebook.com"><i class="fa-brands fa-facebook"></i></a>
          <a href="https://instagram.com"><i class="fa-brands fa-instagram"></i></a>
          <a href="https://twitter.com"><i class="fa-brands fa-twitter"></i></a>
          <a href="https://google.com"><i class="fa-brands fa-google"></i></a>
          <a href="https://skype.com"><i class="fa-brands fa-skype"></i></a>
        </div>
      </form>
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
      <a href="https://facebook.com"><i class="fa-brands fa-facebook"></i></a>
      <a href="https://instagram.com"><i class="fa-brands fa-instagram"></i></a>
      <a href="https://twitter.com"><i class="fa-brands fa-twitter"></i></a>
      <a href="https://linkedin.com"><i class="fa-brands fa-linkedin"></i></a>
    </div>
  </footer>

</body>
</html>
