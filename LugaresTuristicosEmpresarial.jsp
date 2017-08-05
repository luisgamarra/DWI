<%--
  Created by IntelliJ IDEA.
  User: metro
  Date: 11/07/2017
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%-- pasando el valor user_id a entero luego guardo en una session  --%>
    <%--
        int a = Integer.parseInt(request.getParameter("usid"));
        session.setAttribute("idu",a);
    --%>

    <jsp:include page="bootstrap.jsp"/>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Lugares Turisticos</title>
</head>
<body>

<jsp:include page="MenutopEnterprise.jsp"/>

<%-- aqui comienza la programacion --%>
<div id="wrapper">

    <jsp:include page="MenuleftEnterprise.jsp"/>
    <br/><br/>


    <h2 align="center"><b>PLACES TO VISIT</b></h2>
    <hr/>

    <jsp:useBean id="service" class="pe.adventurepage.services.APService"/>

    <%-- el service.mediaContent se ha quedado en la memoria en verdad es mediacontent el property
<c:forEach var="s" items="${service.mediaContent}">
    <p><c:out value="${s.url}"/></p>
</c:forEach>--%>

    <c:forEach var="place" items="${service.places}">
        <%-- <p><a href="stories?action=edit&id=<c:out value="${story.id}"/>"><c:out value="${story.name}"/></a>

         </p>
         --%>
        <div class="col-md-6 col-sm-6 hero-feature">
            <div class="w3-container">


                <div class="w3-card-4" >
                    <img src="<c:out value="${place.photo}"/>" alt="Norway" width="100%" height="200">
                    <div class="w3-container w3-center">
                        <br/>
                        <p><c:out value="${place.name}"/></p>
                        <p>Ubicado en : <c:out value="${place.department}"/></p>
                        <p><c:out value="${place.description}"/> </p>

                    </div>
                </div>
            </div>
            <br/><br/><br/><br/>
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