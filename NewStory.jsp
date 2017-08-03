<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="b" uri="http://bootstrapjsp.org/" %>
<%--
  Created by IntelliJ IDEA.
  User: metro
  Date: 28/07/2017
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="bootstrap.jsp"/>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/simple-sidebar.css" rel="stylesheet">

    <title>Nueva Historia</title>

</head>
<body>

<jsp:include page="menutop.jsp"/>




<div id="wrapper">

    <jsp:include page="menuleft.jsp"/>

    <br/><br/>

    <jsp:useBean id="service" class="pe.adventurepage.services.APService"/>

        <c:out value="${service.suma()}"/>

    <b:column md="3">
    </b:column>
    <b:column md="6">

    <form method="post" action="stories">


        <label for="zona" class="cols-sm-2 control-label">Zona</label>
        <select class="form-control" name="zona" id="zona">
            <c:forEach var="place" items="${service.places}">
                <option value="${place.id}"><c:out value="${place.name}"/></option>
            </c:forEach>
        </select>

        <b:formgroup>
            <input type="text" name="meid" id="meid"  value="${service.suma()}" style="visibility:hidden;"/>
        </b:formgroup>

        <b:formgroup>
            <input type="text" name="usid" id="usid"  value="${user.id}" style="visibility:hidden;"/>
        </b:formgroup>

        <b:formgroup>
            <label for="title" class="cols-sm-2 control-label">Title</label>
            <input type="text" name="title" id="title" class="form-control" />
        </b:formgroup>

        <b:formgroup>
            <label for="description" class="cols-sm-2 control-label">Description</label>
           <textarea name="description" id="description" size="20"  class="form-control"></textarea>
        </b:formgroup>

        <b:formgroup>
            <label for="foto" class="cols-sm-2 control-label">Foto</label>
            <input type="text" name="foto" id="foto" class="form-control"  />
        </b:formgroup>

        <b:formgroup>
            <label for="url" class="cols-sm-2 control-label">Url</label>
            <input type="text" name="url" id="url" class="form-control"  />
        </b:formgroup>

        <input type="hidden" value="${action == 'add' ? 'create' : 'update'  }" name="action"/>
        <b:button context="primary" block="true" type="submit">Guardar</b:button>


    </form>
    </b:column>

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
