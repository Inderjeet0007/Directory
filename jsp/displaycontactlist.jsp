<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONTACT LIST</title>
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
small {
  font-size: 1em;
}

        </style>
    </head>
    <body>
        <h1 align="center">Contact List</h1><br>
        <label style="font-size: 20px">Your Contact List as in database is given below:</label>
        <a href="search.jsp"><input type="submit" name="search" value="search"></a>
        <div style="align:center; border: 1px solid black;">
            <table border='1'>
            <%
                Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tel_dir","root","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from TEL_U");
            while(rs.next())
            {
           %>
           <tr><td><%=rs.getString(1)%></td>
           <td><%=rs.getString(2)%></td>
           <td><%=rs.getString(3)%></td>
           </tr>
           <%
            }
            %>
            
            </table>
            
        </div>
    </body>
</html>
