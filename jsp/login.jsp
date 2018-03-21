<%-- 
    Document   : login
    Created on : Mar 25, 2017, 1:14:26 PM
    Author     : inft d10
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PAGE</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto+Slab'>
        <style>
              * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html, body {
  height: 100%;
  background-color: #F15A5C;
  font-family: "Roboto Slab", serif;
  color: white;
}

.preload * {
  transition: none !important;
}

label {
  display: block;
  font-weight: bold;
  font-size: small;
  text-transform: uppercase;
  font-size: 0.7em;
  margin-bottom: 0.35em;
}

input[type="text"], input[type="password"] {
  width: 100%;
  border: none;
  padding: 0.5em;
  border-radius: 2px;
  margin-bottom: 0.5em;
  color: #333;
}
input[type="text"]:focus, input[type="password"]:focus {
  outline: none;
  box-shadow: inset -1px -1px 3px rgba(0, 0, 0, 0.3);
}

/*.button {
  background-color: #4CAF50; /* Green */
 /*   border: 1px;
    color: black;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
 /*   transition-duration: 0.4s;
    cursor: pointer;
}*/

small {
  font-size: 1em;
}

        </style>
        
    </head>
    <body>
        <h1 align="center" style="color:black; font-size:60px">LOGIN BELOW</h1><br><br>
        <div style="align:center; border: 1px solid black; padding:6%">
            <form method='post'action="index.jsp" >
                <label align="center" style="color:white; font-size:40px">User Name</label>
                <br/><input type='text' name='username' /><br/>
                <br><label align="center" style="color:white; font-size:40px">Password</label>
                <br/><input type='password' name='password' /><br/>
                <div style="padding:0 560px;">
                    
                    <input type='submit' name='Login' value='Login' style="color:white; background-color:black">
                </div>
                <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tel_dir","root","");
                Statement st=con.createStatement();
                String user=request.getParameter("username");
                String password=request.getParameter("password");

                ResultSet rs=st.executeQuery("SELECT * FROM log_d where Username='Inderjeet_s'");
               
                /*pageContext.setAttribute("result", "Done!!",PageContext.SESSION_SCOPE);*/

                %>


            </form>
        </div>
            
        </div>
    </body>
</html>
