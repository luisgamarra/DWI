<%--
  Created by IntelliJ IDEA.
  User: Luis
  Date: 09/07/2017
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>
<html>
<head>
    <jsp:include page="bootstrap.jsp"/>
  <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <title>Menu</title>
</head>
<body>

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
                <li><a href="#"><b:glyphicon type="log-in"/> Cerrar Sesión</a></li>

            </ul>
        </div>
    </div>
</nav>


<div id="wrapper">

    <jsp:include page="menuleft.jsp"/>

</div>


<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>

</body>
</html>
