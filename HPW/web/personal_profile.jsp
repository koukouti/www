<%-- 
    Document   : personal_profile
    Created on : 13 Ιαν 2014, 10:22:04 μμ
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Personal Profile </title>
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
    
    h1, h2{
        font:italic bold 12px/30px Georgia,serif;
        font-size: 130%;
        margin-top: 2cm;
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
    
    #box1
    {
        width:250px;
        height:250px;
        padding:30px;
        background-color:#A00000;
        background-clip:content-box;
        margin-top: 2cm;
        margin-left: 0cm;
        text-align: center;
     }

    #box2
    {
        width:250px;
        height:250px;
        padding:30px;
        background-color:#A00000;
        background-clip:content-box;
        margin-top: -8.2cm;
        margin-left: 8cm;
        text-align: center;
    }
    
    </style>
    <body>
        <h6> HappyParent'sWorld.com </h6>
        <h1>Select your profile picture!</h1>
        
        <form method="post" action="uploadServlet" enctype="multipart/form-data">
            
            <input type="file" name="file" />
            <input type="submit" value="go!" />
        </form>
        
        <h2>Calculate your child's BMI and take a free snack tip for today!</h2>
        <div id="box1">    
            <section>
            <h4 style="background-color:#009999;">BMI</h4>
            <p style="color:#009999;margin-left:20px;text-align: left;">The body mass index (BMI), or Quetelet index, is a measure for human body shape based on an individual's mass and height.</p>
            <a href="input_bmi.jsp">Calculate</a>
            </section>
    </div>
    
    <div id="box2">    
            <section>
                <h5 style="background-color:#009999;">Today's Snack Choice</h5>
                <p style="color:#009999;margin-left:20px;text-align: left;">Extra nutrients
                <br/> Blood sugar levels even
                <br/>Energy source</p>
                <br/>
                <a href="snack_tip.jsp">Take a tip!</a>
            </section>
    </div>
        
    </body>
</html>
