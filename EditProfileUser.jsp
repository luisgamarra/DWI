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
<b:navbar inverse="true" fixed="top">
    <!-- Container -->
    <b:container >


        <b:navbarbrand href="RegisterAccount.jsp">Adventure Page</b:navbarbrand>



        <b:nav pull="right" >

            <b:navbarbrand >About</b:navbarbrand>
            <b:navbarbrand >Services</b:navbarbrand>
            <b:navbarbrand >Contact</b:navbarbrand>
            <b:navbarbrand >Ayuda</b:navbarbrand>
            <button type="button" class="btn btn-default navbar-btn" href="Login.jsp">Cerrar Sesion</button>

        </b:nav>
    </b:container>
    <!-- /.container -->
</b:navbar>



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






</body>
</html>
