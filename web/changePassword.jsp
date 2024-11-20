<%-- 
    Document   : changePassword
    Created on : 18 Nov, 2024, 1:19:33 AM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    // Retrieve user_id from session
    String user_id = (String) session.getAttribute("user_id");

    if (user_id == null) {
        response.sendRedirect("index.html"); // Redirect to login if not logged in
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
   <link rel="stylesheet" href="./editProfileCSS.css">
</head>
<body>
    <div class="container">
        <header class="header">
            <h1>GreenGift</h1>
            <p>Change Your Password</p>
        </header>
        <main class="main">
            <form action="changePassword" method="POST" class="edit-user-form">
                <div class="form-group">
                    <label for="old_password">Old Password</label>
                    <input type="password" id="old_password" name="old_password" placeholder="Enter your old password" required>
                </div>
                <div class="form-group">
                    <label for="new_password">New Password</label>
                    <input type="password" id="new_password" name="new_password" placeholder="Enter your new password" required>
                </div>
                <div class="form-group">
                    <label for="confirm_password">Confirm New Password</label>
                    <input type="password" id="confirm_password" name="confirm_password" placeholder="Re-enter your new password" required>
                </div>
                <div class="form-buttons">
                    <input type="submit" class="submit-btn" value="Change Password">
                    <a href="./dashboard.jsp" class="back-btn">Back to Dashboard</a>
                </div>
            </form>
        </main>
        <footer class="footer">
            <p>© 2024 GreenGift. All rights reserved.</p>
        </footer>
    </div>
</body>
</html>

