<%-- 
    Document   : registration
    Created on : 5 Ιαν 2014, 8:11:38 μμ
    Author     : mariza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    String user = request.getParameter("username");    
    String pwd = request.getParameter("password");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    
    
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into members(first_name, last_name, email, username, password, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "', CURDATE())");
    if (i > 0) {
        response.sendRedirect("success_login.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
