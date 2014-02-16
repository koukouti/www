<%@page language="java" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>bmi result</title>
</head>
<style>
    body {
        background-image:url('disney-wallpaper-border.jpg');
        background-size: 100%;
        font: 13.34px Helvetica, Arial, sans-serif;
        font-size: 100%;
        text-align: left;
        margin-left: 6cm;
        
    }
    h1{
        font:italic bold 12px/30px Georgia,serif;
        font-size: 200%;
        margin-top: 2cm;
        margin-left: 1.5cm;
    }
 
    h2{ 
        font:bold 12px/30px Georgia,serif;
        font-size: 100%;
        margin-top: 3cm;
        margin-left: 2.5cm;
    }

    h3{ 
        font:bold 12px/30px Georgia,serif;
        font-size: 100%;
        margin-left: 2.5cm;
        color:#990033;
    }
    
    h6{
        text-align: left;
        font-size: 250%;
        color: #009999;
        margin-top: 0cm;
        margin-left: 1cm;
    } 

    a{ 
        color: #CCFF00; 
        font: bold 20px/30px sans-serif; 
        margin-top: 2.5cm; 
        margin-left: 3cm;
    }
</style>

<body>
        <h6> HappyParent'sWorld.com </h6>
        <h1><%=request.getAttribute("Result")%></h1>
        <h2><%=request.getAttribute("Indicator")%></h2>
        <h3><%=request.getAttribute("Message")%></h3><br/>
        <a href="index.jsp"> Back to homepage </a>
    
</body>
</html>
