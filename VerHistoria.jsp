<%--
  Created by IntelliJ IDEA.
  User: Lucero
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
        <title>Mis Historias</title>
    </head>
    <body>

    <jsp:include page="menutop.jsp"/>

    <%-- aqui comienza la programacion --%>
<div id="wrapper">

    <jsp:include page="menuleft.jsp"/>
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
            <center><img src="<c:out value="${story.mediacontent.url}"/>" class="img-thumbnail" width="350" /></center>

            <br/>
            <a href="stories?action=edit&idh=<c:out value="${story.id}"/>"><button class="btn btn-info">Editar</button></a>
            <a href="stories?action=delete&idh=<c:out value="${story.id}"/>"><button class="btn btn-danger">Eliminar</button></a>
            <br/><br/>
        <%--<form method="post" action="stories">

                <input type="text" name="idhis" id="idhis"  value="${story.id}" style="visibility:hidden;"/>
                <input type="hidden" value="${action == 'list' ? 'delete' : 'update'  }" name="action"/>
                <b:button context="danger" block="true" type="submit">Eliminar</b:button>
            </form>--%>

            <c:set var="ids" value="${story.id}" scope="application" />

            <div class="panel panel-default" >
                <div class="panel-body">
                    <c:forEach var="comment" items="${service.getCommentByStoryid(ids)}">

                        <p><img src="<c:out value="${comment.user.photo}"/>" class="img-thumbnail" width="50" higth="50"/>
                            <c:out value="${comment.description}"/></p>
                       <P align="left"> <a href="comments?action=delete&idc=<c:out value="${comment.id}"/>">Eliminar</a></P>
                        <hr/>
                    </c:forEach>
                </div>
            </div>


            <form method="post" action="comments">
                <div class="row featurette">
                    <div class="col-md-3 col-md-push-1">
                        <center>
                            <div class="comment-avatar"><img  width="60" height="60" alt="" src="<c:out value="${user.photo}"/>">
                            </div>
                        </center>
                    </div>

                    <div class="col-md-6">
                        <textarea name="description" id="description" class="form-control" cols="40" rows="3" placeholder="Escribe un comentario aqui..."></textarea>
                    </div>

                    <input type="text" name="usid" id="usid"  value="${user.id}" style="visibility:hidden;"/>
                    <input type="text" name="hisid" id="hisid"  value="${story.id}" style="visibility:hidden;"/>

                </div>

                <input type="hidden" value="create" name="action"/>
                <center><b:button context="primary" target="true" type="submit" >Comentar</b:button></center>

            </form>


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
