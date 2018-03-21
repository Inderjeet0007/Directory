<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert a Contact</title>
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
        <h1 align="center">Create New Contact</h1>
        <br><label style="font-size: 25px">To Create a New Contact enter the following details: </label>
            
        <div style="align: center; border: 1px solid black; padding-left: 500px">
        <form method='post' action='createcontactctrl.jsp'>
            <br><label>Name</label>
            <br/><input type='text' name='user_name' /><br/>
            <br><label>Phone Number</label>
            <br/><input type='text' name='user_phone' /><br/>
            <br><label>Email</label>
            <br/><input type='email' name='user_email' /><br/><br>
            <div style="padding-left: 120px">
            <input type='submit' value='Create Contact'>
            <br>
            </div>
        </form>
        </div>
    </body>
</html>
