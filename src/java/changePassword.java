import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class changePassword extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_id = (String) request.getSession().getAttribute("user_id");
        String old_password = request.getParameter("old_password");
        String new_password = request.getParameter("new_password");
        String confirm_password = request.getParameter("confirm_password");

        if (!new_password.equals(confirm_password)) {
            response.getWriter().println("New password and confirm password do not match.");
            return;
        }

        try {
            // Database connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/greengift", "root", "");

            // Validate old password
            PreparedStatement ps = con.prepareStatement("SELECT user_password FROM user WHERE user_id = ?");
            ps.setString(1, user_id);
            ResultSet rs = ps.executeQuery();

            if (rs.next() && rs.getString("user_password").equals(old_password)) {
                // Update to new password
                ps = con.prepareStatement("UPDATE user SET user_password = ? WHERE user_id = ?");
                ps.setString(1, new_password);
                ps.setString(2, user_id);

                int updated = ps.executeUpdate();

                if (updated > 0) {
                    response.sendRedirect("./success1.html"); // Redirect on success
                } else {
                    response.getWriter().println("Failed to update the password.");
                }
            } else {
                response.getWriter().println("Old password is incorrect.");
            }

            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
