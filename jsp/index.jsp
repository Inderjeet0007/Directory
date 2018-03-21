<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Content</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto+Slab'>

        <link rel='stylesheet' id='layers-google-fonts-css'  href='//fonts.googleapis.com/css?family=Droid+Sans%3Aregular%2C700%7CMontserrat%3Aregular%2C700&#038;ver=1.6.5' type='text/css' media='all' />
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

              button {
                padding-left: 1.5em;
                padding-right: 1.5em;
                padding-bottom: 0.5em;
                padding-top: 0.5em;
                border: none;
                border-radius: 2px;
                background-color: #7E5AF1;
                text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.25);
                color: white;
                box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.45);
              }

              small {
                font-size: 1em;
              }

        </style>

        </style>
    </head>
    <body>
        <h1 align="center" style="text-decoration: none; color: white; font-size: 70px">Welcome to TEL_DIR</h1><br><br><br>
            <div style="align:center; border: 1px solid black;">
            <%
                if(pageContext.getAttribute("result")!=null){
                    out.println("Data Added!!");
                    pageContext.removeAttribute("result");
                }
            %>
           
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tel_dir","root","");
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("SELECT * FROM log_d where Username='Inderjeet_s'");
                while(rs.next())
                {
                %>
                <label style="font-size: 25px; padding: 50">WELCOME ! &nbsp&nbsp<%=rs.getString(1)%></label>
                <%
                }
                %> 
            <a href="createcontact.jsp" style="text-decoration: none; color: black; font-size: 50px" >Click here to add New Contact</a><br/><br>
            <a href="displaycontactlist.jsp" style="text-decoration: none; color: black; font-size: 50px" >Click here to view your Contacts</a><br/>
            
        </div>
    </body>
</html>
