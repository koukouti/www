package com.mysql.database;

/* Loading required libraries */
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Logger;
import java.util.logging.Level;
 
public class MyDatabase extends HttpServlet{
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
        

    List types = new ArrayList();

    Connection conn = null; 
    String url = "jdbc:mysql://localhost/users";
    String dbName = "users.sql"; 
    String driver = "com.mysql.jdbc.Driver"; 
    String userName = "root"; 
    String password = ""; 
     
    try {
        Class.forName(driver).newInstance(); 
        conn = DriverManager.getConnection(url+dbName,userName,password); 
        types.add("Connected to the database");   
        
    } catch (Exception e) { 
        types.add("NOT Connected to the database"+e);
    }



   
    String sql = "Insert * from author where author.id < 29 "; 
    Statement stmt=null; 
    
            String authFName = request.getParameter("fname");
            String authLName = request.getParameter("lname");
            String authEmail = request.getParameter("email");
            String authUname = request.getParameter("uname");
            String authPassword = request.getParameter("pass");
            String authCity = request.getParameter("city");
            String authNoc = request.getParameter("noc");
    
    try { 
        stmt = conn.createStatement(); 
        ResultSet rs = stmt.executeQuery(sql); 
        while(rs.next()) { 
            
            
            types.add(authFName); 
            types.add(authLName);
            types.add(authEmail);
            types.add(authUname);
            types.add(authPassword);
            types.add(authCity);
            types.add(authNoc);
            
            request.setAttribute("uname", authUname);
        }
        Statement stmt2 = conn.createStatement();
             
        
        // forwards to the complete submition page
        getServletContext().getRequestDispatcher("/register_form.jsp").forward(request, response); 
        
    }catch(Exception e) { types.add("<br/> not created: "+e); }
    
    finally { 
        if (stmt != null) {
            try { 
                stmt.close();
                types.add("stmtclosed"); 
            } catch (SQLException ex) { 
                Logger.getLogger(MyDatabase.class.getName()).log(Level.SEVERE, null, ex);
            }
        } 
        
        if (conn != null) { 
            try { 
                conn.close();
                types.add("connclosed");
            } catch (SQLException ex) {
                Logger.getLogger(MyDatabase.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    //request.setAttribute("uname", authUname);
    getServletContext().getRequestDispatcher("/after_submition.jsp").forward(request, response);
    
}
}