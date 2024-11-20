package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class editProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Edit User Details - GreenGift</title>\n");
      out.write("        <style>/* styles.css */\n");
      out.write("\n");
      out.write("            body {\n");
      out.write("                font-family: Arial, sans-serif;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                background-color: #f3f4f6;\n");
      out.write("                color: #333;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .container {\n");
      out.write("                display: flex;\n");
      out.write("                flex-direction: column;\n");
      out.write("                min-height: 100vh;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .header {\n");
      out.write("                background-color: #2a9d8f;\n");
      out.write("                color: white;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 20px 0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .header h1 {\n");
      out.write("                margin: 0;\n");
      out.write("                font-size: 2rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .header p {\n");
      out.write("                margin: 0;\n");
      out.write("                font-size: 1rem;\n");
      out.write("                margin-top: 5px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .main {\n");
      out.write("                flex: 1;\n");
      out.write("                display: flex;\n");
      out.write("                justify-content: center;\n");
      out.write("                align-items: center;\n");
      out.write("                padding: 20px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .edit-user-form {\n");
      out.write("                background: white;\n");
      out.write("                padding: 30px;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);\n");
      out.write("                width: 100%;\n");
      out.write("                max-width: 400px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-group {\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-group label {\n");
      out.write("                display: block;\n");
      out.write("                font-weight: bold;\n");
      out.write("                margin-bottom: 5px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-group input {\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 10px;\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                font-size: 1rem;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .form-buttons {\n");
      out.write("                display: flex;\n");
      out.write("                justify-content: space-between;\n");
      out.write("                align-items: center;\n");
      out.write("                margin-top: 20px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .submit-btn {\n");
      out.write("                background-color: #2a9d8f;\n");
      out.write("                color: white;\n");
      out.write("                padding: 10px 15px;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                font-size: 1rem;\n");
      out.write("                cursor: pointer;\n");
      out.write("                font-weight: bold;\n");
      out.write("                flex: 1;\n");
      out.write("                margin-right: 10px;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .submit-btn:hover {\n");
      out.write("                background-color: #21867a;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .back-btn {\n");
      out.write("                text-decoration: none;\n");
      out.write("                background-color: #8d99ae;\n");
      out.write("                color: white;\n");
      out.write("                padding: 10px 15px;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                font-size: 1rem;\n");
      out.write("                font-weight: bold;\n");
      out.write("                text-align: center;\n");
      out.write("                flex: 1;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .back-btn:hover {\n");
      out.write("                background-color: #6d7580;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .footer {\n");
      out.write("                background-color: #2a9d8f;\n");
      out.write("                color: white;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 10px 0;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <header class=\"header\">\n");
      out.write("                <h1>GreenGift</h1>\n");
      out.write("                <p>Update Your Profile Information</p>\n");
      out.write("            </header>\n");
      out.write("            <main class=\"main\">\n");
      out.write("                <form action=\"/update-user-details\" method=\"POST\" class=\"edit-user-form\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"user_name\">Username</label>\n");
      out.write("                        <input type=\"text\" id=\"user_name\" name=\"user_name\" value=\"CurrentUsername\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"user_email\">Email Address</label>\n");
      out.write("                        <input type=\"email\" id=\"user_email\" name=\"user_email\" value=\"CurrentEmail@example.com\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"user_mobile_number\">Mobile Number</label>\n");
      out.write("                        <input type=\"tel\" id=\"user_mobile_number\" name=\"user_mobile_number\" value=\"1234567890\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"user_password\">New Password</label>\n");
      out.write("                        <input type=\"password\" id=\"user_password\" name=\"user_password\" placeholder=\"Enter new password\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"confirm_password\">Confirm Password</label>\n");
      out.write("                        <input type=\"password\" id=\"confirm_password\" name=\"confirm_password\" placeholder=\"Re-enter new password\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-buttons\">\n");
      out.write("                        <button type=\"submit\" class=\"submit-btn\">Save Changes</button>\n");
      out.write("                        <a href=\"/dashboard\" class=\"back-btn\">Back to Dashboard</a>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </main>\n");
      out.write("            <footer class=\"footer\">\n");
      out.write("                <p>© 2024 GreenGift. All rights reserved.</p>\n");
      out.write("            </footer>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
