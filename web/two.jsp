<%-- 
    Document   : two
    Created on : Mar 10, 2018, 6:57:58 AM
    Author     : colchhina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          Cookie cookie = null;
          Cookie[] cookies = null;
          //Get an array of cookies associated with this domain
          cookies = request.getCookies();
          if(cookies != null)
          {
              out.println("<h2>Found Cookies Name and Value</h2>");
              for(int i = 0; i < cookies.length; i++)
              {
                  cookie = cookies[i];
                  out.print("Name : "+ cookie.getName( ) + ", ");
                  out.print("Value : "+ cookie.getValue( )+"<br/> ");
              }
          }else
          {
              out.println("<h2> No Cookies Found</h2>");
          }
            
          %>
          <br/><a href="index.html">Home Page</a>
    </body>
</html>
