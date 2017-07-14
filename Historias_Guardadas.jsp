<%--
  Created by IntelliJ IDEA.
  User: die-s
  Date: 13/07/2017
  Time: 3:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>
<html>
<head>
    <jsp:include page="bootstrap.jsp"/>
    <title>Historias Guardadas</title>

</head>
<body>
div class="container">
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
            <li class="active"><a href="#">Otras Historias</a></li>
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

        <div class="row">

            <div class="col-lg-4">
                <center><img src="Imagenes/Imagen7.jpg" alt="" height="150" align="top" width="200" height="200"></center>
                <h3 align=center>Recorriendo Huacachina</h3>
                <p  align=justify> La laguna de Huacachina es un oasis ubicado a cinco kilómetros al oeste de la ciudad peruana de Ica,
                    en medio del desierto costero del Pacífico. De aguas color verde esmeralda,
                    surgió debido al afloramiento de corrientes subterráneas y alrededor de ella
                    hay una abundante vegetación compuesta de palmeras, eucaliptos (especies introducidas)
                    y la especie de algarrobo conocida como huarango, la que sirve para el descanso de las aves migratorias
                    que pasan por esta región </p>
            </div>

            <div class="col-lg-4">
                <center><img  src="Imagenes/imagen8.jpg" alt="" width="140" height="140"></center>
                <h3 align="center">Recorriendo Cusco</h3>
                <p align="justify">  Construida en el siglo XV a pedido del inca Pachacútec, Machu Picchu está dividida en dos grandes sectores:
                    el agrícola que comprende una vasta red de andenes o terrazas artificiales y el urbano, formado por diversas
                    construcciones y plazas entre las cuales destacan el Templo del Sol, Templo de las Tres Ventanas, el Templo
                    Principal y el llamado sector cóndor. </p>
            </div><!-- /.col-lg-4 -->


        </div><!-- /.row -->


        <div class="row">

            <div class="col-lg-4">
                <center><img src="Imagenes/imagen10.jpg" alt="" height="150" align="top" width="200" height="200"></center>
                <h3 align=center>Recorriendo Ancash</h3>
                <p  align=justify>Áncash cuenta con un rico patrimonio histórico y natural, entre los que destacan los
                    dos yacimientos arqueológicos preíncas Chavín de Huantar (Patrimonio de la Humanidad) y Sechín,
                    y un tramo bien conservado de 50 km del Camino Inca (Patrimonio de la Humanidad). También posee 340.000
                    hectáreas dedicadas a espacios naturales protegidos en el Parque Nacional Huascarán
                    (Patrimonio de la Humanidad) y la Zona Reservada de la Cordillera
                    de Huayhuash que se emplazan en la sierra departamental. </p>
            </div>

            <div class="col-lg-4">
                <center><img  src="Imagenes/Imagen9.jpg" alt="" width="140" height="140"></center>
                <h3 align="center">Arequipa</h3>
                <p align="justify">  Está ubicado al sur del país, limitando al norte con Ayacucho, Apurímac y Cuzco,
                    al este con Puno, al sureste con Moquegua, al oeste con el océano Pacífico y al noroeste con Ica.
                    Con 63 345 km² es el sexto departamento más extenso —por detrás de Loreto, Ucayali, Madre de Dios,
                    Puno y Cuzco— y con 1 152 303 habitantes en 2007 es el octavo más poblado —por detrás de Lima, Piura,
                    La Libertad, Cajamarca, Puno, Junin y Cuzco—. Se fundó el 15 de agosto de 1540. </p>
            </div><!-- /.col-lg-4 -->


        </div><!-- /.row -->


        <center><b:button href="hola.jsp" context="primary" target="true">Agregar nueva historia</b:button></center>
            </b:column>
</body>
</html>
