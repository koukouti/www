<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>
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
    
    .boxed {
        width:500px;
        padding:10px;
        border:5px;
        margin:0px;
    }
    
    h6{
        text-align: left;
        font-size: 250%;
        color: #009999;
        margin-top: 0cm;
        margin-left: 2cm;
    } 
</style>
<body>
        <h6> HappyParent'sWorld.com </h6>
        <div class="boxed">
            <h3><%=request.getAttribute("Message")%></h3>
        </div>
        
    
</body>
</html>