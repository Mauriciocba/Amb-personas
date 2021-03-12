<%-- 
    Document   : nuevaPersona
    Created on : Oct 9, 2020, 9:37:10 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="gestor" scope="request" class="gestores.GestorPersonas" />
        
        
        <%@include file="menu.jsp" %>
        
        
        <h1>Alta de nueva persona</h1>  
        
        <form method="POST" action="confirmacion.jsp" >
            <table>
                <tr><td>Nombre</td><td><input type="text" name="nombre" /></td></tr>
                <tr><td>Apellido</td><td><input type="text" name="apellido" /></td></tr>
                <tr><td>Edad</td><td><input type="number" name="edad" /></td></tr>
                <tr><td>Estado civil</td><td>
                        <select name="idEstadoCivil" >
                            <c:forEach var="ec" items="${gestor.estadosCiviles}">
                                <option value="${ec.id}">${ec.nombre}
                            </c:forEach>
                        </select>
                </td></tr>
                <tr><td></td><td><input type="submit" value="Agregar persona"></td></tr>
            </table>
        </form>
    </body>
</html>
