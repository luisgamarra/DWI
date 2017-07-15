<%--
  Created by IntelliJ IDEA.
  User: ErickRojas
  Date: 11/07/2017
  Time: 4:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>
<html>
<head>
    <jsp:include page="bootstrap.jsp"/>
    <title>Editar Perfil</title>
</head>
<body>


<!-- ----------------------------Navigation -------------------------------------------------------------->
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
            <li ><a href="MisHistorias.jsp" >Mis Historias</a></li>
            <li><a href="FotosyVideos.jsp" >Fotos y Videos</a></li>
            <li><a href="OtrasHistorias.jsp" >Otras Historias</a></li>
            <li><a href="LugaresTuristicos.jsp" >Lugares Turisticos</a></li>
            <li><a href="ProfileUser.jsp" >Datos Personales</a></li>
        </b:nav>
    </b:well>

    <b:image src="http://www.zonnebos.eu/wp-content/uploads/2016/05/person-256-b9a79eac8b2c2ba1caca8a0c0e6b9209263245b3d7f0c1f272d5b53a84f11867.png" shape="thumbnail" width="200" />

</b:column>

  
<b:column sm="7">  
<h1><p align="center"> Bienvenido Erick Rojas</p></h1>

<div class="panel panel-default" >
    <div class="panel-heading" align="center">Datos Personales: </div>
    <div class="panel-body">
        <img src="https://scontent.flim5-2.fna.fbcdn.net/v/t1.0-9/993564_10206881539971597_8459780460160046368_n.jpg?oh=f9941959e59662a7712c6b20bf864eac&oe=59CA00C2"  align="right">



        <ul><b:label> Nombre: </b:label> <br></ul>
        <ul><input type="text" readonly width="180" name="name" id="name"  placeholder="Erick"/></ul>
        <ul><span class="label label-danger">Este dato no puede ser cambiado</span></ul>
        <br>

        <ul><b:label> Apellidos: </b:label><br></ul>
        <ul><input type="text" readonly width="180" name="lastname" id="lastname"  placeholder="Rojas Chilet"/></ul>
        <ul><span class="label label-danger">Este dato no puede ser cambiado</span></ul>
        <br>

        <ul><b:label> E-mail: </b:label><br></ul>
        <ul><input type="text" readonly width="180" name="email" id="email"  placeholder="Scorpion_14_31"/></ul>
        <ul><span class="label label-danger">Este dato no puede ser cambiado</span></ul>
        <br>

        <ul><b:label> Teléfono: </b:label> <br></ul>
        <ul><input type="text"  width="180" name="phone" id="phone"  placeholder="Enter a new cellphone"/></ul><br>
        <ul><b:label> Acerca de mí: </b:label> <br></ul>
        <center><textarea name="aboutMe" id="aboutMe" cols="100" rows="3">Tell us about you.</textarea></center><br>

        <center><b:button href="ProfileUser.jsp" context="primary" target="true">Guardar Cambios</b:button></center>



    </div>
</div>
</b:column>





</body>
</html>
