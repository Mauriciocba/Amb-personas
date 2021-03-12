<%-- 
    Document   : listadopersonas2
    Created on : Oct 2, 2020, 10:03:50 AM
    Author     : diego
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de personas con servlet y scriptlets</h1>
        <table border="1">
            <%
                ArrayList<Persona> lista = (ArrayList<Persona>) request.getAttribute("lista");
                for (Persona persona : lista) {
                    out.print("<tr><td>" + persona.getNombre() + "</td><td>" + persona.getApellido() + "</td><td>" + persona.getEstadoCivil()+ "</td></tr>");
                }
                
            %>

        </table>
        
        
    </body>
</html>
