<%-- 
    Document   : login
    Created on : 3 Ιαν 2014, 7:32:15 μμ
    Author     : mariza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    
    
    // -------------- For DATABASE ----------------------
    
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
