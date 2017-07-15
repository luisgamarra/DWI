
<%--
  Created by IntelliJ IDEA.
  User: Luz
  Date: 14/07/2017
  Time: 4:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="b" uri="http://bootstrapjsp.org/" %>
<html>
<head>
    <jsp:include page="bootstrap.jsp"/>
    <title>Comment</title>
    <link href="stars.css" rel="stylesheet">
    <link href="Style.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Fuentes de Google -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    <!-- Iconos -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

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
                <li ><a href="#" >Mis Historias<span class="sr-only">(current)</span></a></li>
                <li><a href="Fotos_Videos.jsp">Fotos y Videos</a></li>
                <li><a href="#Otras_Historias">Otras Historias</a></li>
                <li><a href="#">Lugares Turisticos</a></li>
                <li><a href="#">Datos Personales</a></li>
            </b:nav>
        </b:well>
        <b:image src="http://www.zonnebos.eu/wp-content/uploads/2016/05/person-256-b9a79eac8b2c2ba1caca8a0c0e6b9209263245b3d7f0c1f272d5b53a84f11867.png" shape="thumbnail" width="200" />
    </b:column>

    <b:column sm="7">

    <div class="panel panel-default" >
        <div class="panel-body">
    </div>


    <h3 class="featurette-heading" align="center"> MI PRIMER VIAJE </h3>

    <center><img class="featurette-image img-responsive center-block" data-src="holder.js/300x300/auto" alt="500 x 500" src="Imagenes/Colca.jpg" data-holder-rendered="true"></center>
    <p>     </p>
    <div class="panel panel-default" >
        <div class="panel-body">
            <p align="justify">Colca es uno de los mayores destinos turísticos del Perú; ubicado al extremo noreste de Arequipa en la Provincia de Caylloma. Colca proviene de las palabras Collaguas y Cabanas, dos etnias que habitaban a lo largo del Río Colca.</p>
        </div>
    </div>


    <div align="right">
        <div class="ec-stars-wrapper">
            <a href="#" data-value="1" title="Votar con 1 estrellas">&#9733;</a>
            <a href="#" data-value="2" title="Votar con 2 estrellas">&#9733;</a>
            <a href="#" data-value="3" title="Votar con 3 estrellas">&#9733;</a>
            <a href="#" data-value="4" title="Votar con 4 estrellas">&#9733;</a>
            <a href="#" data-value="5" title="Votar con 5 estrellas">&#9733;</a>
            <p>     </p>
        </div>
    </div>


        <div class="row featurette">
            <div class="col-md-3 col-md-push-1">
                <center>
                    <div class="comment-avatar"><img  width="60" height="60" alt="" src="Imagenes/Foto.jpg">
                        <p>    </p>
                    </div>
                </center>
                </div>

            <div class="col-md-6">
                <textarea class="form-control" cols="40" placeholder="Escribe un comentario aqui..."></textarea>
                <p>     </p>
                 </div>

        </div>

        <div >
            <center><b:button href="ProfileUser.jsp" context="primary" target="true" >Comentar</b:button></center>
            <p>   </p>
        </div>

    </div>


         </div>


    </b:column>

    </div>


<jsp:include page="script.jsp"/>

</body>
</html>
