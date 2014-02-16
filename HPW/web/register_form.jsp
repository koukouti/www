<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    
    <style>

html, body { height: 100%; }

body {
  background-image:url('disney-wallpaper-border.jpg');
  background-size: 100%;
  font: 13.34px Helvetica, Arial, sans-serif;
  font-size: 100%;
  text-align: left;
  margin-left: 5cm;
  
}
h1{
  font:italic bold 10px/15px Georgia,serif;
  font-size: 150%;
  margin-top: 2cm;
  margin-left: 1cm;
 }
h2{
  font:italic bold 12px/30px Georgia,serif;
  font-size: 100%;
  margin-top: 2cm;
  margin-left: 5cm;
 }
 
 h6{
        text-align: left;
        font-size: 250%;
        color: #009999;
        margin-top: 0cm;
        margin-left: 2cm;
    } 

a         { color: #003333; text-decoration:none; font: 30px Helvetica, Arial, sans-serif; margin-left: 7cm;}
a:hover   { color: #003333; font: 30px Helvetica, Arial, sans-serif; margin-left: 7cm;}
a:visited { color: #003333; font: 30px Helvetica, Arial, sans-serif; margin-left: 7cm;}

table {
	margin-top: 1cm;
    margin-left: 4cm;
 }
 
 button {
	margin-top: 1cm;
    margin-left: 6cm;
 }
 
    </style>
    
    <body>
        <form method="post" action="MyDatabase.java">
            <h6> HappyParent'sWorld.com </h6>
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
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" name="city" value="" /></td>
                    </tr>
                    <tr>
                        <td>Number of children</td>
                        <td><input type="text" name="noc" value="" /></td>
                    </tr>
                </tbody>
            </table>
            
			
            <button type="submit" > Submit </button>
            <input type="reset" value="Reset" />
			
            <br/>
            
            
            
        </form>
    </body>
</html>
