package com.example.model;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class Bmi
 */
public class Bmi extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                //OutputStream out = response.getOutputStream();

                String ht = request.getParameter("height");
                String wt = request.getParameter("weight");
                
                String message = null;  // message will be sent back to client
                
                try {
                        
                
                if ((ht.equals("")) || (wt.equals("")))
                {
                    //throw new IllegalArgumentException("Both Height and Weight must be specified, and they must be numbers");
                    message = "ERROR: Both Height and Weight must be specified, and they must be numbers";        
                }
                
                float weight=Float.parseFloat(wt);
                float height=Float.parseFloat(ht);
                Float heightVal = Float.valueOf(height);
                Float weightVal = Float.valueOf(weight);
                        
                if ((heightVal == 0.0) || (weightVal == 0.0))
                {
                    //throw new IllegalArgumentException("Both Height and Weight must be specified, and they must be numbers");            
                    message = "ERROR: Both Height and Weight must be specified, and they must be numbers"; 
                } else {
                
                        //String message;

                        

                        Float bmi = (weightVal / (heightVal * heightVal));
                        
                        String result = "Your BMI Index is </br>" + bmi;
                        String indicator = "Your BMI Index indicates that ";
                   
                        if (bmi < 18.5){
                             message =  "you may be underweight.";
                        
                        } else if(bmi>=18.5 && bmi <25) {
                             message = "you are in a healthy weight range."; 
                        
                        } else if(bmi>=25 && bmi <30) {
                             message = "you may be overweight but do not have obesity.";
                        
                        } else if(bmi>=30 && bmi <35) {
                             message ="you are in a low-risk obesity.";
                        
                        } else if(bmi>=35 && bmi <40) {
                             message ="you are in a moderate-risk obesity.";
                        
                        } else {
                             message ="you are in a high-risk obesity.";
                        
                        }
                
                        
                        request.setAttribute("Indicator", indicator);
                        request.setAttribute("Result", result);
                        request.setAttribute("Message", message);
             
                        // forwards to the message page
                        getServletContext().getRequestDispatcher("/bmi_result.jsp").forward(request, response); 
                  }      
                } 
                catch (IllegalArgumentException e) {
                        // print the message of the exception
                        String result = "You BMI Index Has An Argument Error"
                                         + e.getMessage();
      
                }
                finally {
            
                
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        }
                
        }

}