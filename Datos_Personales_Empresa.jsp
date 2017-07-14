<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 14/07/2017
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>
<html>
<head>
    <jsp:include page="bootstrap.jsp"/>
    <title>Datos Personales Empresa</title>
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
    <li class="active"><a href="#" >Anuncios<span class="sr-only">(current)</span></a></li>
    <li class="active"><a href="Fotos_Videos.jsp">Historias</a></li>
    <li class="active"><a href="Otras_Histiorias.jsp">Lugares Historias</a></li>
    <li class="Active"><a href="#">Datos Personaless</a></li>
    </b:nav>
    </b:well>
        <b:image src="http://www.zonnebos.eu/wp-content/uploads/2016/05/person-256-b9a79eac8b2c2ba1caca8a0c0e6b9209263245b3d7f0c1f272d5b53a84f11867.png" shape="thumbnail" width="200" />
    </b:column>



    <b:column sm="7">
    <h1><p align="center"> Bienvenido UTP</p></h1>

    <div class="panel panel-default" >
        <div class="panel-heading" align="center">Datos Personales </div>
        <div class="panel-body">



            <ul><b:label> Nombre: </b:label> <br></ul>
            <ul><input type="text" readonly width="180" name="name" id="name"  placeholder="Empresa UTP"/></ul>
            <ul><span class="label label-danger">Este dato no puede ser cambiado</span></ul>
            <br>

            <ul><b:label> E-mail: </b:label><br></ul>
            <ul><input type="text" readonly width="180" name="email" id="email"  placeholder="utp@empresa.com.pe"/></ul>
            <ul><span class="label label-danger">Este dato no puede ser cambiado</span></ul>
            <br>

            <ul><b:label> Direccion </b:label> <br></ul>
            <ul><input type="text"  width="180" name="Direccion" id="Direccion"  placeholder="Digite Direccion"/></ul><br>


            <div class="form-group">
                <p> </p>
                <p> </p>
                <input type="file" id="exampleInputFile" align="center">
            </div>




            <center><b:button href="ProfileUser.jsp" context="primary" target="true">Guardar Cambios</b:button></center>



        </div>
    </div>

    </b:column>





</body>
</html>
