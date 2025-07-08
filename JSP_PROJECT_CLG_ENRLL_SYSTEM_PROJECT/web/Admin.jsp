<%-- 
    Document   : Admin
    Created on : 31 Mar, 2025, 5:36:12 PM
    Author     : yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        
        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"
            integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.css">
        
        <!-- Internal CSS -->
        <style>
            
            
            
             * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

/*        body {
            font-family: Arial, sans-serif;
            color: black;
               background: linear-gradient(to right, #00c6ff, #0072ff);
        }*/

        /* Navigation Bar */
        .navbar {
            margin:0px;
            width: 100%;
            height: 75px;
            display: flex;
            align-items: center;
            justify-content: space-center;
            padding: 0 50px;
            gap:45px;
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

        
        
        
            
            
            body {
                font-family: Arial, sans-serif;
                background: linear-gradient(to right, #00c6ff, #0072ff);
                
               
                align-items: center;
                height: 100vh;
                
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
                width:80%;
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

        


        
    </div>
    
        <!-- Admin Login Form -->
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
        
        
        

        <script>
            function adminLogin() {
                let adminEmail = document.getElementById("adminEmail").value;
                let adminPass = document.getElementById("adminPass").value;

                // Correct Admin Credentials
                if (adminEmail === "Mohit@Yadav" && adminPass === "yadav123") {
                    window.location.href = "viewstudent.jsp"; // Redirect on success
                    return false; // Prevent default form submission
                } else {
                    alert("Invalid Admin Credentials!");
                    return false; // Prevent form from redirecting
                }
            }
        </script>
    </body>
</html>
