<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Admin Login - College Enrollment System</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" />

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

     body {
      height: 100%;
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #00c6ff, #0072ff);
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
     
    }

    .menu ul li a {
      color: white;
      text-decoration: none;
      font-weight: bold;
    }

    .menu ul li a:hover {
      color: orange;
    }
        
    /* Admin Form Styling - SAME AS BEFORE */
    .content {
      padding-top: 120px;
      display: flex;
      justify-content: center;
      min-height: calc(100vh - 180px);
    }

    .overlay_1 {
      background: rgba(255, 255, 255, 0.95);
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.3);
      width: 380px;
      text-align: center;
      margin: 60px auto;
    }

    .imgcontainer {
      text-align: center;
      margin-bottom: 20px;
    }

    .avatar {
      width: 150px;
      border-radius: 50%;
      border: 3px solid #0072ff;
      padding: 5px;
    }

    .head_4 {
      font-size: 26px;
      margin-bottom: 20px;
      color: #333;
      font-weight: bold;
    }

    .int {
      width: 80%;
      padding: 12px;
      margin: 12px 0;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 17px;
      transition: 0.3s;
      text-align: center;
    }

    .int:focus {
      border-color: #0072ff;
      box-shadow: 0px 0px 5px rgba(0, 114, 255, 0.5);
      outline: none;
    }

    .btn_31 {
      width: 80%;
      padding: 12px;
      background: #0072ff;
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 18px;
      cursor: pointer;
      transition: 0.3s;
      font-weight: bold;
      letter-spacing: 1px;
    }

    .btn_31:hover {
      background: #005bb5;
      transform: scale(1.05);
    }

    footer {
      background-color: rgba(0, 0, 0, 0.9);
      color: white;
      text-align: center;
      padding: 30px 0;  /* MORE GAP added */
      margin-top: 100px; /* PUSH FOOTER DOWN MORE */
    }

    footer a {
      color: white;
      text-decoration: none;
      margin: 0 10px;
    }

    footer a:hover {
      color: orange;
    }

    .social-icons a {
      margin: 0 10px;
      color: white;
      font-size: 20px;
    }

    .social-icons a:hover {
      color: orange;
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
  </div>

  <!-- Admin Login Form (same as before) -->
  <div class="content">
    <div class="overlay_1">
      <form onsubmit="return adminLogin()">
        <div class="imgcontainer">
          <img src="images/avatr.jpeg" alt="Avatar" class="avatar">
        </div>
        <h2 class="head_4">Admin Login</h2> 
        <input type="email" class="int" id="adminEmail" placeholder="Enter Admin Email" required>
        <input type="password" class="int" id="adminPass" placeholder="Enter Admin Password" required>
        <button type="submit" class="btn_31">Admin Login</button>
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

  <script>
    function adminLogin() {
      let adminEmail = document.getElementById("adminEmail").value;
      let adminPass = document.getElementById("adminPass").value;

      if (adminEmail === "Mohit@Yadav" && adminPass === "yadav123") {
        window.location.href = "viewstudent.jsp";
        return false;
      } else {
        alert("Invalid Admin Credentials!");
        return false;
      }
    }
  </script>
</body>
</html>
