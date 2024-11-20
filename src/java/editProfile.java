/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author dipku
 */
public class editProfile extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_id = (String) request.getSession().getAttribute("user_id");
        String user_name = request.getParameter("user_name");
        String user_email = request.getParameter("user_email");
        String user_mobile_number = request.getParameter("user_mobile_number");
        String user_address = request.getParameter("user_address");

        try {
            // Database connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/greengift", "root", "");

            // Update user details
            PreparedStatement ps = con.prepareStatement("UPDATE user SET user_name=?, user_email=?, user_mobile_number=?, user_address=? WHERE user_id=?");
            ps.setString(1, user_name);
            ps.setString(2, user_email);
            ps.setString(3, user_mobile_number);
            ps.setString(4, user_address);
            ps.setString(5, user_id);

            int updated = ps.executeUpdate();

            ps.close();
            con.close();

            if (updated > 0) {
                HttpSession session = request.getSession();
                session = request.getSession();
                
                session.setAttribute("user_name", user_name);
                session.setAttribute("user_email", user_email);
                session.setAttribute("user_address", user_address);
                session.setAttribute("user_mobile_number", user_mobile_number);
                response.sendRedirect("./success1.html"); // Redirect on success
            } else {
                response.getWriter().println("Failed to update details.");
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
