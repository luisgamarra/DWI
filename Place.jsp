<%--
  Created by IntelliJ IDEA.
  User: ErickRojas
  Date: 11/07/2017
  Time: 9:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>
<html>
<head>
    <jsp:include page="bootstrap.jsp"/>
    <title>Place</title>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<!-- ----------------------------Navigation -------------------------------------------------------------->
<b:navbar inverse="true" fixed="top">
    <!-- Container -->
    <b:container >


        <b:navbarbrand href="RegisterAccount.jsp">Adventure Page</b:navbarbrand>



        <b:nav pull="right" >

            <b:navbarbrand >About</b:navbarbrand>
            <b:navbarbrand href="Place">Services</b:navbarbrand>
            <b:navbarbrand >Contact</b:navbarbrand>
            <b:navbarbrand >Ayuda</b:navbarbrand>
            <button type="button" class="btn btn-default navbar-btn" href="Login.jsp">Cerrar Sesion</button>

        </b:nav>
    </b:container>
    <!-- /.container -->
</b:navbar>

<b:column sm="3" align="center">
    <b:button context="primary" block="true" href="Menu.jsp">Menu</b:button>
<!--Menu-->
    <b:well>
        <b:nav tabs="warpper">
            <li ><a href="MisHistorias.jsp" >Mis Historias</a></li>
            <li><a href="FotosyVideos.jsp" >Fotos y Videos</a></li>
            <li><a href="OtrasHistorias.jsp" >Otras Historias</a></li>
            <li><a href="Place.jsp" >Lugares Turisticos</a></li>
            <li><a href="ProfileUser.jsp" >Datos Personales</a></li>
        </b:nav>
    </b:well>

    <b:image src="http://www.zonnebos.eu/wp-content/uploads/2016/05/person-256-b9a79eac8b2c2ba1caca8a0c0e6b9209263245b3d7f0c1f272d5b53a84f11867.png" shape="thumbnail" width="200" />

</b:column>


<b:column sm="7" align="center">


</b:column>



<b:column sm="7" align="center">

    <div class="container">
        <h2>Cuzco</h2><br><br>






        <div id="myCarousel" class="carousel slide" data-ride="carousel" >
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="http://www.latinotravel.com.pe/wp-content/uploads/2015/08/Ruinas_majestuosas.jpg" alt="Los Angeles" style="width:50%;">
            </div>

            <div class="item">
                <img src="http://4.bp.blogspot.com/-OOwkzmbc-Tw/VNSrZitMNaI/AAAAAAAAcWs/z5APeMRRG-0/s1600/Plaza%2Bde%2BArmas%2C%2BCuzco%2C%2BPer%C3%BA.jpg" alt="Chicago" style="width:70%;">
            </div>

            <div class="item">
                <img src="https://previews.123rf.com/images/danflcreativo/danflcreativo1503/danflcreativo150300285/37835380-Detalle-de-la-configuraci-n-de-los-s-mbolos-m-s-famosos-de-Cuzco-en-Per-la-antigua-ciudad-inca-de-Ma-Foto-de-archivo.jpg" alt="New york" style="width:50%;">
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    </div>

</b:column>





</body>
</html>
