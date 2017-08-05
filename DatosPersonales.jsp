<%@ taglib prefix="b" uri="http://bootstrapjsp.org/" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lucero
  Date: 30/07/2017
  Time: 1:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="bootstrap.jsp"/>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/simple-sidebar.css" rel="stylesheet">

    <title>Datos Personales</title>

</head>
<body>

<jsp:include page="menutop.jsp"/>


<div id="wrapper">

    <jsp:include page="menuleft.jsp"/>
    <br/><br/>

    <b:column sm="3">

    </b:column>

    <b:column sm="6">
        <jsp:useBean id="service" class="pe.adventurepage.services.APService"/>

     <form method="post" action="users">
        <c:set var="idu" value="${user.id}" scope="application" />

        <h1><p align="center"> ¡Hola! <c:out value="${user.name}"/> <c:out value="${user.lastname}"/></p></h1>

        <div class="panel panel-default" >
            <div class="panel-heading" align="center">Datos Personales: </div>
            <ul><p>  </p></ul>
            <ul><p>  </p></ul>
            <ul><p>  </p></ul>
             <img src="<c:out value="${user.photo}"/>"  align="right" width="300" higth="300" class="img-circle">
            <ul><p>  </p></ul>




                <input type="text" name="usid" id="usid"  value="${user.id}" style="visibility:hidden;"/>

            <ul><b:label class="label label-danger"> NOMBRE: </b:label><br></ul>
                <ul><input type="text" readonly width="180" name="name" id="name"  value="${user.name}"/></ul>
                <br/>

            <ul><b:label class="label label-danger"> APELLIDOS: </b:label><br></ul>
                <ul><input type="text"  readonly width="180" name="lastname" id="lastname" value="${user.lastname}"/>  </ul>
                <br/>

            <ul><b:label class="label label-success"> CONTRASEÑA: </b:label> <br></ul>
                <ul><input type="text" <%-- type="password" --%> width="180" name="pass" id="pass" value="${user.password}" /></ul>
                <br/>


            <ul><b:label class="label label-success"> TELÉFONO: </b:label> <br></ul>
                <ul><input type="text"  width="180" name="phone" id="phone" value="${user.phone}" /></ul>
                <br/>

            <ul><b:label class="label label-danger"> E-MAIL: </b:label><br></ul>
                <ul><input type="text" readonly width="180" name="email" id="email"  value="${user.email}"/></ul>
                <br/>
            <ul><b:label class="label label-success"> FOTO: </b:label> <br></ul>
                <ul><input type="text"  width="200" name="photo" id="photo"  value="${user.photo}"/></ul>
                <br/>

                <center><input type="hidden" value="update" name="action"/>
                    <b:button context="primary" block="true" type="submit">Guardar Cambios</b:button></center>



            </div>


     </form>
    </b:column>

    <b:column sm="3">

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