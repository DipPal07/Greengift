<%-- 
    Document   : editProfile
    Created on : 18 Nov, 2024, 12:16:50 AM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session = request.getSession();
    String user_name = (String) session.getAttribute("user_name");
    String user_email = (String) session.getAttribute("user_email");
    String user_address = (String) session.getAttribute("user_address");
    String user_mobile_number = (String) session.getAttribute("user_mobile_number");
   
                  

%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit User Details - GreenGift</title>
        <link rel="stylesheet" href="./editProfileCSS.css">
    </head>
    <body>
        <div class="container">
            <header class="header">
                <h1>GreenGift</h1>
                <p>Update Your Profile Information</p>
            </header>
            <main class="main">
                <form action="editProfile" method="POST" class="edit-user-form">
                    <div class="form-group">
                        <label for="user_name">Username</label>
                        <input type="text" id="user_name" name="user_name" value="<%=user_name%>" required>
                    </div>
                    <div class="form-group">
                        <label for="user_email">Email Address</label>
                        <input type="email" id="user_email" name="user_email" value="<%=user_email%>" required>
                    </div>
                    <div class="form-group">
                        <label for="user_mobile_number">Mobile Number</label>
                        <input type="tel" id="user_mobile_number" name="user_mobile_number" value="<%=user_mobile_number%>" required>
                    </div>
                    <div class="form-group">
                        <label for="user_address">Address</label>
                        <textarea type="tel" id="user_address" name="user_address" ><%=user_address%></textarea>
                    </div>
                    
                    <div class="form-buttons">
                        <input type="submit" class="submit-btn"value="Save Changes">
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
