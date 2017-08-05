<%--
  Created by IntelliJ IDEA.
  User: metro
  Date: 28/07/2017
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%-- pasando el valor user_id a entero luego guardo en una session  --%>
    <%--<%
        int a = Integer.parseInt(request.getParameter("usid"));
        session.setAttribute("idu",a);
    %>--%>
    <jsp:include page="bootstrap.jsp"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Otras Historias</title>
</head>
<body>

<jsp:include page="MenutopEnterprise.jsp"/>

<%-- aqui comienza la programacion --%>
<div id="wrapper">

    <jsp:include page="MenuleftEnterprise.jsp"/>
    <br/><br/>




    <jsp:useBean id="service" class="pe.adventurepage.services.APService"/>


    <h2 align="center"><b><c:out value="${story.name}"/> </b></h2>
    <hr/>

    <div class="col-md-3">
    </div>

    <div class="col-md-6">
        <p><c:out value="${story.description}"/> </p>
        <br/>
        <p align="left"><c:out value="${story.story_date}"/> </p>
        <br/>
        <p align="left"> Hecho por:<c:out value="${story.user.name}"/></p>
        <center><img src="<c:out value="${story.mediacontent.url}"/>" class="img-thumbnail" width="350" /></center>
    </div>

    <div class="col-md-3">
    </div>




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

