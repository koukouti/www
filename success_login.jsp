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
  font: 13.34px Helvetica, Arial, sans-serif;
  font-size: 100%;
  text-align: left;
  margin-left: 5cm;
  margin-top: 3cm;
}
h1{
  font:italic bold 12px/30px Georgia,serif;
  font-size: 250%;
  margin-top: 2cm;
 }

a         { color: #00a; }
a:hover   { color: #000; }
a:visited { color: #a0a; }
    </style>
    
    <body>
        <%
            if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        %>
        <h1> You have not logged in </h1>
        <a href="index.jsp"> Please Login To Continue </a>.
        <%} else {
        %>
        <%=session.getAttribute("userid")%>
        <a href='personal_profile.jsp'> Click Here To See Your Profile </a>
        <a href='logout.jsp'>Log out</a>
        <%
            }
        %>
    </body>
</html>

