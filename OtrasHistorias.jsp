<%--
  Created by IntelliJ IDEA.
  User: Luis
  Date: 31/07/2017
  Time: 10:29
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
        <link href="cardsstyle.css" rel="stylesheet">
    <title>Otras Historias</title>
</head>
<body>

<jsp:include page="menutop.jsp"/>

<%-- aqui comienza la programacion --%>
<div id="wrapper">

    <jsp:include page="menuleft.jsp"/>
    <br/><br/>


    <h2 align="center"><b>OTRAS HISTORIAS</b></h2>
    <hr/>

    <jsp:useBean id="service" class="pe.adventurepage.services.APService"/>

    <%-- el service.mediaContent se ha quedado en la memoria en verdad es mediacontent el property
<c:forEach var="s" items="${service.mediaContent}">
    <p><c:out value="${s.url}"/></p>
</c:forEach>--%>
    <c:set var="idu" value="${user.id}" scope="application" />



    <c:forEach var="story" items="${service.getStoryByDifUserid(idu)}">
        <%-- <p><a href="stories?action=edit&id=<c:out value="${story.id}"/>"><c:out value="${story.name}"/></a>

         </p>
         --%>
        <div class="col-md-4 col-sm-6 hero-feature">
            <div class="w3-container">


                <div class="w3-card-4" >
                    <img src="<c:out value="${story.mediacontent.url}"/>" alt="Norway" width="100%" height="200">
                    <div class="w3-container w3-center">
                        <br/>
                        <img src="<c:out value="${story.user.photo}"/>" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:70px">
                        <p><c:out value="${story.name}"/></p>
                        <p>por : <c:out value="${story.user.name}"/></p>
                        <p><c:out value="${story.story_date}"/> </p>


                    </div>
                    <a href="stories?action=list2&id=<c:out value="${story.id}"/>"><button class="w3-button w3-block w3-dark-grey">Ver Historia</button></a>

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
