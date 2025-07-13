<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mohit.dao.Users2DAO" %>
<%@ page import="com.mohit.bean.Users2Bean" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Faculty Login Help - College Enrollment System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <!-- Styles identical in spirit to studentHelp.jsp but with Faculty colors -->
    ...
</head>
<body>
    <!-- Same NAVBAR as above -->
    ...

    <!-- CONTENT -->
    <div class="main">
        <div class="container">
            <h2 class="header-label">Faculty Login Help</h2>
            <form method="post">
                <label for="lid">Enter Login ID:</label>
                <input type="text" id="lid" name="lid" required>
                <input type="submit" value="Search">
            </form>

            <%
                String lidStr = request.getParameter("lid");
                if (lidStr != null && !lidStr.isEmpty()) {
                    try {
                        int lid = Integer.parseInt(lidStr);
                        Users2DAO facultyDAO = new Users2DAO();
                        Users2Bean faculty = facultyDAO.findById(lid);
                        if (faculty.getLid() != 0) {
            %>
                <hr>
                <h3>Faculty Account Details</h3>
                <table>
                    <tr><th>Name</th><td><%= faculty.getName() %></td></tr>
                    <tr><th>Username</th><td><%= faculty.getUsername() %></td></tr>
                    <tr><th>Password</th><td><%= faculty.getPassword() %></td></tr>
                </table>
            <%
                        } else {
                            out.println("<p>❌ Faculty Not Found! Please check your ID.</p>");
                        }
                    } catch (NumberFormatException e) {
                        out.println("<p>⚠️ Invalid Login ID! Please enter a valid number.</p>");
                    }
                }
            %>
            <div class="back-btn">
                <a href="Index.jsp">Back to Home</a>
            </div>
        </div>
    </div>

    <!-- FOOTER same as studentHelp.jsp -->
    ...
</body>
</html>
