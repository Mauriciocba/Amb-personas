<%-- 
    Document   : confirmacion
    Created on : Oct 23, 2020, 10:19:32 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="nuevaPersona" scope="session" class="modelo.Persona" />
<jsp:setProperty name="nuevaPersona" property="*" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Confirmación</h1>
        <p>Esta seguro de agregar esta persona?<p>
            ${nuevaPersona.nombre} <br>
            ${nuevaPersona.apellido} <br>
            ${nuevaPersona.edad} <br>
            ${nuevaPersona.idEstadoCivil} <br>
            
        <form action="NuevaPersona" method="POST">
            <input type="submit" value="Agregar" />                   
        </form>
            
            
            
        
    </body>
</html>
