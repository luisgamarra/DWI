<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 13/07/2017
  Time: 4:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>
<html>
<head>
    <jsp:include page="bootstrap.jsp"/>
    <title>Fotos y Videos</title>
</head>
<body>
<div class="container">
    <header>
        <nav class="navbar navbar-inverse navbar-static-top" role ="navigation">

            <div class="header clearfix">
                <nav>
                    <ul class="nav nav-pills pull-right">
                        <li role="presentation" ><a href="Principal.jsp">Cerrar Sesion</a></li>
                    </ul>
                </nav>
                <a href="#" class="navbar-brand">Adventure Page</a>
            </div>
        </nav>
    </header>




    <b:column sm="3" align="center">
    <b:well>
    <b:nav tabs="warpper">
                <li> <a href="index.jsp" >Mis Historias</a></li>
                <li class="active"><a href="#">Fotos y Videos</a></li>
                <li><a href="Otras_Histiorias.jsp">Otras Historias</a></li>
                <li><a href="#">Lugares Turisticos</a></li>
                <li><a href="#">Datos Personaless</a></li>
        </b:nav>
    </b:well>
    <b:image src="http://www.zonnebos.eu/wp-content/uploads/2016/05/person-256-b9a79eac8b2c2ba1caca8a0c0e6b9209263245b3d7f0c1f272d5b53a84f11867.png" shape="thumbnail" width="200" />
</b:column>


    <b:column sm="9">


    <div class="panel panel-default" >
        <div class="panel-heading" align="center">Fotos y Videos </div>
        <div class="panel-body">


            <!--videos-->
            <h1><p align="center"> Videos</p></h1>
            <div class="row">

                <div class="col-lg-4">
                    <center><iframe width="200" height="200" src="https://www.youtube.com/embed/dP_S-1whhRQ" frameborder="0" allowfullscreen></iframe></center>
                    <h5 align=center>Buen Viaje a huachina</h5>
                </div>

                <div class="col-lg-4">
                    <center><iframe width="200" height="200" src="https://www.youtube.com/embed/uW164dEnYvc" frameborder="0" allowfullscreen></iframe></center>
                    <h5 align=center>La Gran Arequipa</h5>
                </div>
                <div class="col-lg-4">
                    <center><iframe width="200" height="200" src="https://www.youtube.com/embed/Rs4mCnXL9xU" frameborder="0" allowfullscreen></iframe></center>
                    <h5 align=center>Buen viaje a Cusco</h5>
                </div>



                <!-- Fotos-->
                <h1><p align="center"> Fotos</p></h1>
                <div class="row">

                    <div class="col-lg-4">
                        <center><img src="Imagenes/imagen8.jpg" alt="" height="150" align="top" width="200" height="200"></center>
                        <h5 align=center>Cusco</h5>
                    </div>

                    <div class="col-lg-4">
                        <center><img src="Imagenes/imagen10.jpg" alt="" height="150" align="top" width="200" height="200"></center>
                        <h5 align=center>Recorriendo Ancash</h5>
                    </div>
                    <div class="col-lg-4">
                        <center><img src="Imagenes/Imagen7.jpg" alt="" height="150" align="top" width="200" height="200"></center>
                        <h5 align=center>Recorriendo Huacachina</h5>
                    </div>
</b:column>
</body>
</html>
