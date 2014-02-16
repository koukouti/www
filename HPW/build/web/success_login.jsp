<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Fail/Success Login Message </title>
    </head>
    
    <style>

html, body { height: 100%; }

body {
  background-image:url('disney-wallpaper-border.jpg');
  background-size: 100%;
  font: 13.34px Helvetica, Arial, sans-serif;
  font-size: 100%;
  text-align: left;
  margin-left: 7cm;
  
}
h1{
  font:italic bold 12px/30px Georgia,serif;
  font-size: 250%;
  margin-top: 3cm;
 }
 h6{
        text-align: left;
        font-size: 250%;
        color: #009999;
        margin-top: 0cm;
        margin-left: 2cm;
    } 

a         { color: #009999; font: bold 20px/30px Georgia,sans-serif; }
a:hover   { color: #009999; font: bold 20px/30px Georgia,sans-serif; }
a:visited { color: #009999; font: bold 20px/30px Georgia,sans-serif; }
    </style>
    
    <body>
        
        <%
            
                if (((request.getParameter("uname").equals("koukouti")) && (request.getParameter("pass").equals("12345678")))) {
     
        %>
        <h6> HappyParent'sWorld.com </h6>
        <h1> Welcome <%=request.getParameter("uname")%> </h1>
        <a href='personal_profile.jsp'> Click Here To See Your Profile </a>
        <br/>
        <a href='logout.jsp'>Log out</a>
        <%
            } else { 
        %>
        <h1> You have not logged in </h1>
        <a href="will_to_account.jsp"> Please Login To Continue </a>.
        <%
            }
        %>
    </body>
</html>

