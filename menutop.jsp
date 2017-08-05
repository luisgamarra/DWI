<%@ taglib prefix="b" uri="http://bootstrapjsp.org/" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: metro
  Date: 28/07/2017
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="">Page Adventure</a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><b:glyphicon type="user"/> <c:out value="${user.name}"/></a></li>
                <li><a href="users?action=logout"><b:glyphicon type="log-in"/> Cerrar Sesión</a></li>

            </ul>
        </div>
    </div>
</nav>
