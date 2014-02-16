<%-- 
    Document   : logout
    Created on : 5 Ιαν 2014, 8:25:31 μμ
    Author     : mariza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>