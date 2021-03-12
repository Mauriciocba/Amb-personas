<%-- 
    Comentario de JSP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <!--   Comentario de HTML   -->
        <h1>Esta es mi primera pagina con JSP</h1>
        <ul>
        <% 

            for (int i = 0; i < 10; i++) {
                out.println("<li>" + i);
            }
            
            int x = 343;

        %>
        </ul>
        <h2>asdfasdfasdf asdf 
        </h2>
        
        <p> El precio actual es : <%= x %></p>
    </body>
</html>
