<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Help - College Enrollment System</title>

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
      background: linear-gradient(to right, #4facfe, #00f2fe);
      color: white;
    }

    /* Navbar */
    .navbar {
      display: flex;
      align-items: center;
      justify-content: space-between;
      background-color: rgba(0, 0, 0, 0.85);
      padding: 10px 30px;
      flex-wrap: wrap;
    }

    .logo {
      font-size: 30px;
      font-weight: bold;
      color: darkorange;
    }

    .menu ul {
      display: flex;
      list-style: none;
      gap: 20px;
    }

    .menu ul li a {
      text-decoration: none;
      color: white;
      font-weight: bold;
      transition: color 0.3s;
    }

    .menu ul li a:hover {
      color: orange;
    }

    .login-buttons {
      display: flex;
      gap: 10px;
      margin-top: 10px;
    }

    .btn, .btn30 {
      padding: 8px 15px;
      border-radius: 15px;
      font-weight: bold;
      font-size: 14px;
      border: none;
      text-decoration: none;
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
      background: white;
      color: blue;
    }

    .btn30:hover {
      background: blue;
      color: white;
    }

    /* Main Content */
   .main-content {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;    /* vertical center */
    align-items: center;        /* horizontal center */
    padding: 20px;
    text-align: center;
}

    .main-content h1 {
      color: black;
      font-size: 36px;
      margin-bottom: 20px;
      text-shadow: 2px 2px 5px rgba(0,0,0,0.2);
    }

    .info-box {
      max-width: 600px;
      background: rgba(255, 255, 255, 0.1);
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 0 10px rgba(0,0,0,0.3);
      margin-bottom: 30px;
    }

    .info-box p {
      font-size: 18px;
      line-height: 1.5;
      margin: 10px 0;
    }

    .info-box strong {
      color: orange;
    }

    .btn-container {
      display: flex;
      gap: 20px;
      flex-wrap: wrap;
      justify-content: center;
    }

    .help-btn {
      background: white;
      border: none;
      padding: 14px 30px;
      font-size: 16px;
      font-weight: bold;
      border-radius: 8px;
      cursor: pointer;
      transition: all 0.3s ease;
      text-decoration: none;
      color: #333;
    }

    .help-btn:hover {
      background: #ff9800;
      color: white;
    }

    .help-btn a {
      color: inherit;
      text-decoration: none;
      display: block;
      width: 100%;
      height: 100%;
    }

    .help-btn:hover a {
      color: white;
    }

    /* Footer */
    footer {
      background-color: rgba(0, 0, 0, 0.9);
      color: white;
      text-align: center;
      padding: 20px 10px;
    }

    footer a {
      color: white;
      margin: 0 10px;
      text-decoration: none;
    }

    footer a:hover {
      color: orange;
    }

    footer .social-icons a {
      margin: 0 8px;
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

  <!-- Main Content -->
  <div class="main-content">
    <h1>Help & Support</h1>
    <div class="info-box">
      <p>Welcome to the <strong>College Enrollment System</strong> help center.</p>
      <p>If you need assistance with login, account recovery, or enrollment issues, choose the appropriate option below.</p>
    </div>
    <div class="btn-container">
      <a class="help-btn" href="finduser.jsp">Student Help</a>
      <a class="help-btn" href="finduser2.jsp">Faculty Help</a>
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
