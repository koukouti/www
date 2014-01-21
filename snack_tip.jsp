<%-- 
    Document   : snack_tip
    Created on : 19 Ιαν 2014, 10:09:49 μμ
    Author     : mariza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>

<h1>Today's Snack Choice</h1>
<p>Click the button to display the date and the snack.</p>
<p id="demo"></p>
<p id="src"></p>

<button type="button" onclick="myFunction()">Try it</button>

<script>
function myFunction()
{
document.getElementById("demo").innerHTML = Date();

var textArray = [
    'juice',
    'apple'
];
var randomNumber = Math.floor(Math.random()*textArray.length);
audioElement.setAttribute("src", textArray[randomNumber]);
}
</script>

</body>
</html> 
