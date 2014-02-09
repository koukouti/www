<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>

html, body { height: 100%; }

body {
  background-image:url('disney-wallpaper-border.jpg');
  font: 13.34px Helvetica, Arial, sans-serif;
  font-size: 100%;
  text-align: left;
  margin-left: 3cm;
}
h1{
  font:italic bold 12px/30px Georgia,serif;
  font-size: 250%;
  margin-top: 3cm;
  margin-left: 4.5cm;
 }
 
 table {
     text-align: center;
	 margin-left: 6cm;
	 margin-top: 3cm;
	 margin-left: 6cm;
 }
 p {
     text-align: left;
	 margin-left: 5cm;
	 margin-top: 6cm;
 }
    </style>
    <body>
        <h1>Please fill in all fields</h1>
        
        <form action="Bmi" method="post">
<table>
<tr>
<td>height:</td>
<td><input type="text" name="height" size="35" maxlength="6" ></td>
</tr>
<tr>
<td>weight:</td>
<td><input type="text" name="weight" size="35" maxlength="6" ></td>
</tr>

<tr>
<td colspan="2"><input type="button" onclick="formReset()" value="reset">
<input type="submit" value="submit"></td>
</tr>
</table>
<p><b>Note:</b> If any field above is not specified, the border-collapse </p>
</form>
    </body>
    
</html>
