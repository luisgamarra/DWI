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
            <a href="MenuEnterprise.jsp">
                Menú
            </a>
        </li>
        <li>
            <a href="Advertisements.jsp">Anuncios</a>
        </li>
        <li>
            <a href="OtrasHistoriasEmpresarial.jsp">Otras Historias</a>
        </li>
        <li>
            <a href="LugaresTuristicosEmpresarial.jsp">Lugares Turisticos</a>
        </li>
        <li>
            <a href="enterprise?action=edit&id=<c:out value="${user.id}"/>">Datos de la empresa</a>
        </li>



    </ul>
</div>



<a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Ir al Menú</a>
