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
    <title>Title</title>
</head>
<body>

<b:navbar inverse="true" fixed="top">

    <b:container >
        <!-- Brand and toggle get grouped for better mobile display -->

        <b:navbarbrand href="index.html">Page Adventure</b:navbarbrand>

        <!-- Collect the nav links, forms, and other content for toggling -->

        <b:nav pull="right" >

            <
            <b:navbarbrand href=""><b:glyphicon type="user"/>  User</b:navbarbrand>
            <b:navbarbrand href=""><b:glyphicon type="log-in"/>  cerrar Sesion</b:navbarbrand>


        </b:nav>
        <!-- /.navbar-collapse -->
    </b:container>
    <!-- /.container -->
</b:navbar>

<b:column sm="3" align="center">
    <b:button context="primary" block="true" href="Menu.jsp">Menu</b:button>

        <b:well>
        <b:nav tabs="warpper">
        <li ><a href="MisHistorias.jsp" >Mis Historias</a></li>
        <li><a href="FotosyVideos.jsp" >Fotos y Videos</a></li>
        <li><a href="OtrasHistorias.jsp" >Otras Historias</a></li>
        <li><a href="LugaresTuristicos.jsp" >Lugares Turisticos</a></li>
        <li><a href="DatosPersonales.jsp" >Datos Personales</a></li>
        </b:nav>
        </b:well>

    <b:image src="http://www.zonnebos.eu/wp-content/uploads/2016/05/person-256-b9a79eac8b2c2ba1caca8a0c0e6b9209263245b3d7f0c1f272d5b53a84f11867.png" shape="thumbnail" width="200" />

</b:column>

<b:column sm="9" align="center">

    <h1>BIENVENIDO ..........</h1>
</b:column>
</body>
</html>
