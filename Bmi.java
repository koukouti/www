package com.example.model;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Bmi
 */
public class Bmi extends HttpServlet {
    
        public Bmi() {
                super();
        }

        private static boolean isNumber(String s)
        {
                try {
                        Integer.parseInt(s);                    
                }
                catch (NumberFormatException nfe) {
                        return false;
                }
                return true;
        }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                OutputStream out = response.getOutputStream();

                String height = request.getParameter("height");
                String weight = request.getParameter("weight");
                try {
                        if ((height == null) || (weight == null) || (height.length() == 0) || (weight.length() == 0) || !(isNumber(height)) || !(isNumber(weight)))
                        {
                                throw new IllegalArgumentException("Both Height and Weight must be specified, and they must be numbers");
                        }

                        Float heightVal = Float.valueOf(height);
                        Float weightVal = Float.valueOf(weight);

                        Float bmi = (weightVal / (heightVal * heightVal)) * 703;

                        String result = "<html><head><title>Your BMI Index</title>"
                                        + "</head><body><h1>Your BMI Index is " + bmi
                                        + "</body></html>";

                        out.write(result.getBytes());
                } 
                catch (IllegalArgumentException e) {
                        String result = "<html><head><title>You BMI Index Has An Argument Error</title>"
                                        + "</head><body><h1>" + e.getMessage() + "</body></html>";

                        out.write(result.getBytes());
                }
        }

}
