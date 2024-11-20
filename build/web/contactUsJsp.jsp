<%-- 
    Document   : contactUsJsp
    Created on : 16 Sep, 2024, 11:47:14 AM
    Author     : dipku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>contact</title>
    </head>
    <body>
                <%@page import ="java.sql.*" %>

        <%
        String name=request.getParameter("name");
        String mobileNo=request.getParameter("mobileNo");
        String email=request.getParameter("email");
        
        String message=request.getParameter("message");
        
        response.setContentType("text/html;charset=UTF-8");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/greengift", "root", "");
            PreparedStatement ps=con.prepareStatement("insert into contactus values(?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, mobileNo);
            ps.setString(3, email);
            ps.setString(4,message);
            int x=ps.executeUpdate();    
            if(x>0){  response.sendRedirect("./success.html");}else{
              
                 response.sendRedirect("./accessDenied.html");
            }
  
         
        }catch(Exception e){
            System.out.print(e);
        } %>
    </body>
</html>
