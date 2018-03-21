<%-- 
    Document   : create_contact_ctrl
    Created on : Mar 25, 2017, 1:36:12 PM
    Author     : inft d10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Controller Page</h1>
        <form>
            <label>USERNAME</label>
                <br/><input type='text' name='user_n' /><br/>
            <label>PHONE NUMBER</label>
                <br/><input type='text' name='phone_no' /><br/>
            <label>E-MAIL</label>
                <br/><input type='text' name='email' /><br/>
        </form>
        
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tel_dir","root","");
            Statement st=con.createStatement();
            String user=request.getParameter("user_name");
            String phone=request.getParameter("user_phone");
            String email=request.getParameter("user_email");
            int status=st.executeUpdate("insert into TEL_U values('"+user+"','"+phone+"','"+email+"')");
            pageContext.setAttribute("result", "Done!!",PageContext.SESSION_SCOPE);
            response.sendRedirect("index.jsp");
        %>
        
    </body>
</html>
