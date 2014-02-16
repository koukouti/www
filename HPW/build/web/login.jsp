<%-- 
    Document   : login
    Created on : 3 Ιαν 2014, 7:32:15 μμ
    Author     : mariza
--%>

<%@page language="java" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    
    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Users?useUnicode=true&characterEncoding=UTF-8","root","");
    
    
    Statement st = conn.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>