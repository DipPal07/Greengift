<%-- 
    Document   : loginJsp
    Created on : 16 Sep, 2024, 11:40:31 AM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>

<%@page import ="java.sql.*" %>


<% String email = request.getParameter("email");
    String password = request.getParameter("password");

    try {
        /* TODO output your page here. You may use following sample code. */
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/greengift", "root", "");
        PreparedStatement ps = con.prepareStatement("select * from user where user_email=? and user_password=?");

        ps.setString(1, email);
        ps.setString(2, password);

        ResultSet rs = ps.executeQuery();
        if (rs.next()) {

//              HttpSession session=request.getSession();
            session = request.getSession();
            session.setAttribute("user_id", rs.getString("user_id"));
            session.setAttribute("user_name", rs.getString("user_name"));
            session.setAttribute("user_email", rs.getString("user_email"));
            session.setAttribute("user_adddress", rs.getString("user_address"));
            session.setAttribute("user_mobile_number", rs.getString("user_mobile_number"));

           response.sendRedirect("./success.html");
        } else {
            response.sendRedirect("./accessDenied.html");
        }

    } catch (Exception e) {
        System.out.print(e);
    }%>


