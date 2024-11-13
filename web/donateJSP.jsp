<%-- 
    Document   : donateJSP
    Created on : 22 Oct, 2024, 11:33:14 PM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import ="java.sql.*" %>


<%
    String emailConfirmation = request.getParameter("emailConfirmation") == null ? "false" : "true";
    String whatsappConfirmation = request.getParameter("whatsappConfirmation") == null ? "false" : "true";
    String firstName = request.getParameter("firstName") == null ? "" : request.getParameter("firstName");
    String lastNmae = request.getParameter("lastName") == null ? "" : request.getParameter("lastName");
    String name = firstName + " " + lastNmae;
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String mobileNo = request.getParameter("mobileNo");
    String knowAboutUs = request.getParameter("knowAboutUs");
    String donationType = request.getParameter("donationType");

//        String password = request.getParameter("password");
    try {
        session = request.getSession();
        String user_id = (String) session.getAttribute("user_id");       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/greengift", "root", "");
        PreparedStatement ps = con.prepareStatement("INSERT INTO donatedplant (name, email, mobile_number, address, know_about_us, donation_type, email_confirmation, whatsapp_confirmation, login_user_id)VALUES (?,?,?,?,?,?,?,?,?);");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, mobileNo);
        ps.setString(4, address);
        ps.setString(5, knowAboutUs);
        ps.setString(6, donationType);
        ps.setString(7, emailConfirmation);
        ps.setString(8, whatsappConfirmation);
        ps.setString(9,user_id);

        int x = ps.executeUpdate();
        if (x > 0) {
            
            response.sendRedirect("./success.html");
        } else {
            response.sendRedirect("./accessDenied.html");
        }

    } catch (Exception e) {
        System.out.print(e);
    }%>