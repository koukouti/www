<%-- 
    Document   : bmi
    Created on : 16 ??? 2014, 7:22:06 ??
    Author     : user
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BMI</title>
    </head>
    <style>

        html, body { height: 100%; }

        body {
            background-image:url('disney-wallpaper-border.jpg');
            background-size: 100%;
            font: 13.34px Helvetica, Arial, sans-serif;
            font-size: 100%;
            text-align: left;
            margin-left: 3cm;
        }
        
        h6{
        text-align: left;
        font-size: 250%;
        color: #009999;
        margin-top: 0cm;
        margin-left: 4cm;
        } 
        
        h1,h2, h3, h4{
        text-align: left;
        font-size: 150%;
        color: #CCFF00;
        margin-top: 0cm;
        margin-left: 4cm;
        } 
        
        input{
            margin-left: 4cm;
        }
        
    </style>
    
    <body>
        
        <h6> HappyParent'sWorld.com </h6>
        
        <form name="bmiForm">
            <h1>Your Weight(kg):</h1> <input type="text" name="weight" size="10"><br /><br />
            <h2>Your Height(m):</h2> <input type="text" name="height" size="10"><br /><br />
            <input type="button" value="Calculate BMI" onClick="calculateBmi()"><br /><br />
            <h3>Your BMI:</h3> <input type="text" name="bmi" size="15"><br /><br />
            <h4>This Means:</h4> <input type="text" name="meaning" size="40"><br /><br />
            <input type="reset" value="Reset" />
        </form>
        
        <script language="JavaScript">

            function calculateBmi() {
                var weight = document.bmiForm.weight.value;
                var height = document.bmiForm.height.value;
                if(weight > 0 && height > 0){	
                    var finalBmi = weight/(height*height);
                    document.bmiForm.bmi.value = finalBmi;
                    if(finalBmi < 18.5){
                        document.bmiForm.meaning.value = "That you may be underweight.";
                    }
                    if(finalBmi > 18.5 && finalBmi < 25){
                        document.bmiForm.meaning.value = "That you are in a healthy weight range.";
                    }
                    if(finalBmi > 25 && finalBmi < 30){
                        document.bmiForm.meaning.value = "That you may be overweight but do not have obesity.";
                    }
                    if(finalBmi > 30 && finalBmi < 35){
                        document.bmiForm.meaning.value = "That you are in a low-risk obesity.";
                    }
                    if(finalBmi > 35 && finalBmi < 40){
                        document.bmiForm.meaning.value = "That you are in a moderate-risk obesity.";
                    }
                    if(finalBmi > 40){
                        document.bmiForm.meaning.value = "That you are you are in a high-risk obesity.";
                    }
                    
                }
                else{
                    document.bmiForm.meaning.value = "Please Fill in everything correctly";
                }
            }

        </script>
    </body>
    
</html>