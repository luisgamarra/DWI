<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 13/07/2017
  Time: 4:01
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="bootstrap.jsp"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Fotos y Videos</title>
</head>
<body>
<jsp:include page="menutop.jsp"/>

<%-- aqui comienza la programacion --%>
<div id="wrapper">

    <jsp:include page="menuleft.jsp"/>
    <br/><br/>


    <h2 align="center"><b>MIS FOTOS Y VIDEOS</b></h2>
    <hr/>

    <jsp:useBean id="service" class="pe.adventurepage.services.APService"/>

    <c:forEach var="story" items="${service.getStoryByUserid(idu)}">

        <div class="col-md-4 col-sm-6 hero-feature">
            <div class="w3-container">


                <div class="w3-card-4" >

                    <iframe width="388" height="260" src="<c:out value="${story.mediacontent.url}"/>" frameborder="0" allowfullscreen></iframe>

                    <div class="w3-container w3-center">
                        <br/>
                        <p><c:out value="${story.mediacontent.name}"/></p>
                        <br/>

                    </div>
                </div>
            </div>
            <br/>
        </div>


    </c:forEach>

    <br/><br/><br/>


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