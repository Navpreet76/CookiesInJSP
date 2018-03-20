<%-- 
    Document   : one
    Created on : Mar 10, 2018, 6:44:15 AM
    Author     : colchhina
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String rollno = request.getParameter("rollno");
           Cookie MyCookie = new Cookie(rollno, new Date().toString());
           MyCookie.setMaxAge(60*60*24);
           response.addCookie(MyCookie);
        %>
        <br/><a href="two.jsp">Next Page</a>
    </body>
</html>
