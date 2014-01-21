<%-- 
    Document   : register_form
    Created on : 3 Ιαν 2014, 7:33:17 μμ
    Author     : mariza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
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
  font:italic bold 12px/30px Georgia,serif;
  font-size: 100%;
  margin-top: 2cm;
 }

a         { color: #003333; text-decoration:none; font: 30px Helvetica, Arial, sans-serif; }
a:hover   { color: #003333; font: 30px Helvetica, Arial, sans-serif; }
a:visited { color: #003333; font: 30px Helvetica, Arial, sans-serif; }
    </style>
    
    <body>
        <form method="post" action="registration.jsp">
            <center>
            <h1> Enter Your Personal Information Here </h1>
            <table border="1" width="30%" cellpadding="5">
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Submit" />
            <input type="reset" value="Reset" />
            <br/>
            <h2> After submition press : </h2><a href="success_login.jsp"> OK </a>
            
            </center>
        </form>
    </body>
</html>
