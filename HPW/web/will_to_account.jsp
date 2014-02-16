<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Happy Parents' World</title>
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
  font:italic bold 12px/30px Georgia,serif;
  font-size: 250%;
  margin-top: 2cm;
  text-align: left;
  margin-left: 4cm;
 } 
h2{
  font-size: 250%;
  margin-top: 2cm;
  margin-left: 2cm;
 }

h3, h4{
  font:italic bold 12px/30px Georgia,serif;
  font-size: 100%;
  margin-top: 0.5cm;
  margin-left: 6cm;
 }
 
 h6{
        text-align: left;
        font-size: 250%;
        color: #009999;
        margin-top: 0cm;
        margin-left: 2cm;
    } 
 
 table {
	margin-top: 1cm;
    margin-left: 4cm;
 }
 
 button {
	margin-top: 1cm;
    margin-left: 6cm;
 }
 
a         { color: #009999; font: bold 20px/30px Georgia,sans-serif; margin-left: 6cm;}
    a:hover   { color: #009999; font: bold 20px/30px Georgia,sans-serif; margin-left: 6cm;}
    a:visited { color: #009999; font: bold 20px/30px Georgia,sans-serif; margin-left: 6cm;}

    </style>
    
    <body>
        
        <form action="success_login.jsp" method="post">
            <h6> HappyParent'sWorld.com </h6>
            <h1> Login Here : </h1>
            
            
                
            <table border="1" width="30%" cellpadding="3">
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                        <%--
                        <%String uname = request.getParameter("uname");   
                          session.setAttribute("uname", uname);%>
                        --%>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                        <%--
                        <%String pass = request.getParameter("pass");   
                          session.setAttribute("pass", pass);%>
                        --%>
                    </tr>
                </tbody>
            </table>
            <button type="submit"> Login </button>
            <input type="reset" value="Reset" />
            <br/>
            
            <h2> You have not an account yet? </h2>
            <h3> Sign Up Here : </h3><a href="register_form.jsp">Go To Our Register Form</a>
            <h4> It's free and always will be </h4>
            
        </form>
    </body>
</html>
