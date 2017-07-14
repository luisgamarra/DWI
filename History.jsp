<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 10/07/2017
  Time: 2:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>
<html>
<head>
  <jsp:include page="bootstrap.jsp"/>
  <title>Welcome Bootstrap Developers</title>
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
      <li class="active"><a href="#" >Mis Historias<span class="sr-only">(current)</span></a></li>
      <li class="active"><a href="Fotos_Videos.jsp">Fotos y Videos</a></li>
      <li class="active"><a href="Otras_Histiorias.jsp">Otras Historias</a></li>
      <li><a href="#">Lugares Turisticos</a></li>
      <li><a href="#">Datos Personaless</a></li>
    </b:nav>
  </b:well>
  <b:image src="http://www.zonnebos.eu/wp-content/uploads/2016/05/person-256-b9a79eac8b2c2ba1caca8a0c0e6b9209263245b3d7f0c1f272d5b53a84f11867.png" shape="thumbnail" width="200" />
</b:column>





<b:column sm="7">

  <div class="panel panel-default" >
    <div class="panel-heading" align="center">Mis Historias </div>
    <div class="panel-body">

      <div class="row featurette">
        <div class="col-md-4">
          <h5 align="center">Titulo</h5>
        </div>
        <div class="col-md-8">
          <input type="text" class="form-control" placeholder="Escriba un titulo para su historia" align="center">
        </div>
      </div>




      <div class="row featurette">
        <div class="col-md-4">
          <p> </p>
          <h5 align="center">Descripcion</h5>
        </div>
        <div class="col-md-8">
          <p> </p>
          <textarea class="form-control" rows="4" align="center"></textarea>
        </div>
      </div>



      <div class="form-group">
        <p> </p>
        <p> </p>
        <input type="file" id="exampleInputFile" align="center">
      </div>




      <center><b:button href="ProfileUser.jsp" context="primary" target="true">Guardar</b:button></center>
    </div>


    </div>
  </div>
</b:column>
</body>
</html>
