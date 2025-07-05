<%-- 
    Document   : register
    Created on : 17 Mar, 2025, 11:57:51 AM
    Author     : yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STUDENT SIGN UP HERE</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .form {
                width: 360px;
                background: rgba(0, 0, 0, 0.8);
                padding: 20px;
                border-radius: 10px;
                text-align: center;
                color: white;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            .form h2 {
                background: white;
                color: black;
                padding: 10px;
                border-radius: 10px;
                transition: 0.4s;
            }
            .form h2:hover {
                background: orange;
            }
            .form input {
                width: 100%;
                padding: 8px;
                margin-top: 15px;
                border: none;
                border-bottom: 1px solid orange;
                background: transparent;
                color: white;
                font-size: 16px;
            }
            .btnn {
                width: 100%;
                background: orange;
                padding: 10px;
                border-radius: 5px;
                cursor: pointer;
                color: white;
                font-weight: bold;
                margin-top: 20px;
                border: none;
            }
            .btnn:hover {
                background: white;
                color: orange;
            }
            .form a {
                
                text-decoration: none;
                color: white;
                
            }
            
            .form a{
                color:blue;
            }
            
            
            
        </style>
    </head>
    <body>
        <div class="form">
            <h2> Student Signup Here</h2>
            <form action="saveuser.jsp" method="post">
                <input type="text" name="uid" placeholder="Enter Login Id" required>
                <input type="text" name="name" placeholder="Enter Name" required>
                <input type="text" name="un" placeholder="Enter Username" required>
                <input type="password" name="ps" placeholder="Enter Password" required>
                <input type="text" name="email" placeholder="Enter email">
                <input type="number" name="mobile" placeholder="Enter Mobile No">
                <button type="submit" class="btnn">Sign Up</button>
            </form>
            <p class="link"> Already have You Account?</p>
            <button class="btnn"><a  href="Index.jsp">Sign In</a></button>
        </div>
    </body>
</html>
