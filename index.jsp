<%-- 
    Document   : index
    Created on : 3 Ιαν 2014, 6:50:31 μμ
    Author     : mariza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Happy Parents' World</title>
    </head>
    
    <style>

html, body { height: 100%; }

body {
  background-image:url('rsz_background.jpg');
  background-color:#FF9999;
  font: 13.34px Helvetica, Arial, sans-serif;
  font-size: 100%;
  text-align: center;
}
h1{
  font-size: 250%;
  margin-top: 2cm;
 }
 
h2{
  font-size: 250%;
  margin-top: 2cm;
 }

h3, h4{
  font:italic bold 12px/30px Georgia,serif;
  font-size: 100%;
  margin-top: 0.5cm;
 }
 
a         { color: #003333; font: bold 12px/30px Georgia,sans-serif; }
a:hover   { color: #003333; font: bold 12px/30px Georgia,sans-serif; }
a:visited { color: #003333; font: bold 12px/30px Georgia,sans-serif; }
    </style>
    
    <body>
        <form method="post" action="login.jsp">
            <center>
            <h1> Login Here : </h1>
            <table border="1" width="30%" cellpadding="3">
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Login" />
            <input type="reset" value="Reset" />
            <h2> You have not an account yet? </h2>
            <h3> Sign Up Here : </h3><a href="register_form.jsp">Go To Our Register Form</a>
            <h4> It's free and always will be </h4>
            </center>
        </form>
    </body>
</html>
