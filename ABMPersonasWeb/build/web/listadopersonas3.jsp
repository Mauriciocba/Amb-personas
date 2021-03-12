<%-- 
    Document   : listadopersonas3
    Created on : Oct 9, 2020, 9:05:00 AM
    Author     : diego
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="gestor" scope="request" class="gestores.GestorPersonas" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
            .destacado {
                font-weight: bold;
                background-color: lightblue;
            }
            
            .normal {
                background-color: lightgoldenrodyellow;
            }
        </style>
    </head>
    <body>
      
        <%@include file="menu.jsp" %>
        
        <h1>Listado de personas con servlet y EL</h1>
        
        
        
        <table border="1">
            
            
            <c:forEach items="${gestor.personas}" var="persona" >
                <c:if test="${not empty persona.apellido}"> 
                    <tr 
                        <c:choose>
                            <c:when test="${persona.estadoCivil.id == 5}">class="destacado"</c:when>    
                            <c:otherwise>class="normal"</c:otherwise>
                        </c:choose>
                    > 
                       <td> ${persona.nombreCompleto} </td>
                       <td style="background-color: antiquewhite"> ${persona.apellido} </td>
                       <td> ${persona.estadoCivil} 
                           
                           <c:if test="${persona.estadoCivil.id == 5}">
                           <a href="modificarEstado?idPersona=${persona.id}">Cambiar estado civil</a>
                           </c:if>
                       
                       </td>
                    </tr>
                </c:if>
            </c:forEach>

        </table>
    </body>
</html>
