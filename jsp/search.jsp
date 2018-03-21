<%-- 
    Document   : display_contact_list
    Created on : Mar 25, 2017, 2:29:18 PM
    Author     : inft d10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <h1>Search Here</h1>
        <div style="align:center; border: 1px solid black; padding-left: 500px ; font-size: 20px">
            <form>
                <label>Enter below what u want to search :</label>
                <input type='text' name='search_box'><br> 
            </form>
            <table border='1'>
            <%
                Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tel_dir","root","");
            Statement st=con.createStatement();
            String search=request.getParameter("search_box");
            ResultSet rs=st.executeQuery("select * from TEL_U where username='"+search+"' ");
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
            <label>Found !</label>
        </div>
    </body>
</html>
