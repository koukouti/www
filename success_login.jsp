<%-- 
    Document   : success_login
    Created on : 3 Ιαν 2014, 6:56:14 μμ
    Author     : mariza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Fail/Success Login Message </title>
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
        <a href='profile.jsp'> Click Here To See Your Profile </a>
        <a href='logout.jsp'>Log out</a>
        <%
            }
        %>
    </body>
</html>
