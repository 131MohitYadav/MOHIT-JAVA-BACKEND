<%-- 
    Document   : addstudent
    Created on : 12 Mar, 2025, 7:46:12 PM
    Author     : yadav
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Add Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: lightgrey;
            text-align: center;
            margin: 50px;
        }
        .frm {
            margin: auto;
            width: 60%;
            border-radius: 15px;
        }
        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 80%;
            background-color: lightblue;
            border-radius: 15px;
            box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.2);
            overflow: hidden;
        }
        td {
            padding: 12px;
            text-align: center;
        }
        input[type="text"] {
            width: 95%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            box-shadow: inset 2px 2px 5px rgba(0, 0, 0, 0.2);
        }
        input[type="submit"] {
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
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.4);
        }
        .message {
            color: green;
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="frm">
        <form action="save.jsp" method="post">
            <table>
                <tr>
                    <td>SID:</td>
                    <td><input type="text" name="sid" required></td>
                </tr>
                <tr>
                    <td>NAME:</td>
                    <td><input type="text" name="name" required></td>
                </tr>
                <tr>
                    <td>ENROLLMENT:</td>
                    <td><input type="text" name="enroll" required></td>
                </tr>
                <tr>
                    <td>Physics:</td>
                    <td><input type="text" name="p" required></td>
                </tr>
                <tr>
                    <td>Chemistry:</td>
                    <td><input type="text" name="c" required></td>
                </tr>
                <tr>
                    <td>Maths:</td>
                    <td><input type="text" name="m" required></td>
                </tr>
                <tr>
                    <td>Hindi:</td>
                    <td><input type="text" name="h" required></td>
                </tr>
                <tr>
                    <td>English:</td>
                    <td><input type="text" name="e" required></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Add Student"></td>
                </tr>
            </table>
        </form>
        <% 
            String message = request.getParameter("message");
            if ("success".equals(message)) { 
        %>
            <div class="message">Student Added Successfully! Redirecting to login...</div>
            <script>
                setTimeout(function() {
                    window.location.href = 'login.jsp';
                }, 2000);
            </script>
        <% } %>
    </div>
</body>
</html>
