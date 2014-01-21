<%-- 
    Document   : index
    Created on : 19 Ιαν 2014, 8:14:11 μμ
    Author     : user
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
  font:italic bold 12px/30px Georgia,serif;
  font-size: 250%;
  margin-top: 2cm;
 }
 
h2{
  font-size: 100%;
  margin-top: 2cm;
 }

 h3{
  font: 13.34px Helvetica, Arial, sans-serif;
  font-size: 130%;
  color:#660033;
 }

h4, h5{
  font: 13.34px Helvetica, Arial, sans-serif;
  font-size: 100%;
  margin-top: 2cm;
 }
 
a         { color: #003333; font: bold 20px/30px Georgia,sans-serif; }
a:hover   { color: #003333; font: bold 20px/30px Georgia,sans-serif; }
a:visited { color: #003333; font: bold 20px/30px Georgia,sans-serif; }

#box1
{
width:250px;
height:250px;
padding:30px;
background-color:#FF9999;
background-clip:content-box;
margin-top: 2cm;
margin-left: 8cm;
}

#box2
{
width:250px;
height:250px;
padding:30px;
background-color:#FF9999;
background-clip:content-box;
margin-top: -8.2cm;
margin-left: 18cm;
}
    </style>
    
    <body>
    <h1> Welcome in our application! </h1>
    <h2> You are exploring our facilities as guest.</h2>
    <h3> To LOGIN or SIGN IN press <a href="will_to_account.jsp">here</a></h3>
    
    
    <div id="box1">    
            <section>
            <h4 style="background-color:#009999;">BMI</h4>
            <p style="color:#009999;margin-left:20px;text-align: left;">The body mass index (BMI), or Quetelet index, is a measure for human body shape based on an individual's mass and height.</p>
            <a href="Bmi.java">Calculate yours free</a>
            </section>
    </div>
    
    <div id="box2">    
            <section>
                <h5 style="background-color:#009999;">Today's Snack Choice</h5>
                <p style="color:#009999;margin-left:20px;text-align: left;">Extra nutrients
                <br/> Blood sugar levels even
                <br/>Energy source</p>
                <br/>
                <a href="snack_tip.jsp">Take a FREE tip!</a>
            </section>
    </div>
</html>
