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
        margin-left: 6cm;
        
    }
    h1{
        font:italic bold 12px/30px Georgia,serif;
        font-size: 250%;
        margin-top: 2cm;
        margin-left: 1.5cm;
    }
    
    h6{
        text-align: left;
        font-size: 250%;
        color: #009999;
        margin-top: 0cm;
        margin-left: 1cm;
    } 
 
    p1       { color: #686868; font: bold 20px/30px sans-serif; margin-top: 3cm;margin-left: 2cm;}

    p        { color: #CCFF00; font: bold 20px/30px sans-serif; margin-top: 2.5cm; margin-left: 0.5cm;}

    c        { color: #CCFF00; font: bold 20px/30px sans-serif; margin-top: 2.5cm; margin-left: 4.5cm;}

    input    { margin-left: 6cm;}
</style>

<body>
    <h6> HappyParent'sWorld.com </h6>
    <h1>Today's Snack Choice</h1>
    <p1>Click the button to display today's snack.</p1>
    <br/>

    <input type="button" id="btnSearch" value="Search" onclick="myFunction()"/>
    <p id="demo"></p>
    <br/>
    <c id="message"></c>

    <script>

        function myFunction()
        {
            document.getElementById("demo").innerHTML = Date();
            var textArray = new Array("one glass of juice", "one pealed apple", "some strawberries", "tow slices of bread with tomato and cheese",
                          "three cookies", "banana", "unsaulted popcorn", "yogurt", "cereal bar");
            var random = textArray[Math.floor(Math.random() * textArray.length)];
            document.getElementById("message").innerHTML=random;

        }
    </script>

</body>
</html> 