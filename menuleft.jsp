<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Luis
  Date: 23/07/2017
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <li class="sidebar-brand">
            <a href="#">
                Menú
            </a>
        </li>
        <li>
            <a href="MisHistorias.jsp?usid=<c:out value="${user.id}"/>">Mis Historias</a>
        </li>
        <li>
            <a href="FotosyVideos.jsp">Fotos y Videos</a>
        </li>
        <li>
            <a href="OtrasHistorias.jsp">Otras Historias</a>
        </li>
        <li>
            <a href="LugaresTuristicos.jsp">Lugares Turisticos</a>
        </li>
        <li>
            <a href="DatosPersonales.jsp">Datos del Usuario</a>
        </li>



    </ul>
</div>



<a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Ir al Menú</a>
