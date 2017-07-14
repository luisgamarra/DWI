<%--
  Created by IntelliJ IDEA.
  User: Lucero
  Date: 11/07/2017
  Time: 1:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

  <jsp:include page="bootstrap.jsp"/>
  <link href="carousel.css" rel="stylesheet">
  <title>Home Page</title>

</head>
<body>
<div class="navbar-wrapper">
  <div class="container">

    <nav class="navbar navbar-inverse navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Page Adventure</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#Home">Home</a></li>
            <li><a href="About.jsp">Quienes Somos</a></li>
            <li><a href="#contact">Noticias</a></li>
            <li><a href="Information.jsp">Ayuda</a></li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
</div>


<!-- Carousel
================================================== -->

<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img class="first-slide" height="1118" src="Imagenes/Imagen4.jpg" alt="First slide">
      <div class="container">
        <div class="carousel-caption">
          <h1>¡Sé parte de nuestra comunidad!</h1>
        </div>
      </div>
    </div>
    <div class="item">
      <img class="second-slide" height="1118" src="Imagenes/Imagen5.jpg" alt="Second slide">
      <div class="container">
        <div class="carousel-caption">
          <h1>Conoce un poco mas sobre el Perú</h1>
        </div>
      </div>
    </div>
    <div class="item">
      <img class="third-slide"  src="Imagenes/Imagen6.jpg" alt="Third slide">
      <div class="container">
        <div class="carousel-caption">
          <h1>Identificate con nuestra cultura.</h1>
        </div>
      </div>
    </div>
  </div>
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

  <!-- /.carousel -->
  <!-- START THE FEATURETTES -->

  <!-- Primera division -->
  <hr class="featurette-divider">
  <div class="container">


      <div class="row featurette">
        <div class="col-md-4">
          <h2 class="featurette-heading">FOTOS Y VIDEOS</h2>
          <p class="lead">                   </p>
          <p class="lead" align=justify>En Page Adventure te invitamos a compartir con nosotros , tus fotos y videos de sus experiencias vividas en las principales atracciones de cada destino del Perú.</p>
        </div>

            <div class="col-md-4">
              <iframe width="320" height="200" align="center" src="https://www.youtube.com/embed/skjWfV31enU" frameborder="0" allowfullscreen></iframe>
            </div>


        <div class="col-md-3">

          <ul class="nav nav-tabs">
            <li role="presentation" class="active"><a href="#">Login</a></li><li role="presentation"><a href="Sign.jsp">Sign up</a></li>


            <form class="form-signin">
              <div class="panel panel-default" >
              <label for="inputEmail" class="sr-only" >Email address</label>
              <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
              <label for="inputPassword" class="sr-only">Password</label>
              <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me"> Remember me
                </label>
              </div>
              <button class="btn btn-lg btn-primary btn-block" type="submit" >Sign in</button>
            </form>
            </div>
          </ul>
        </div>
      </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-6">
            <h2 class="featurette-heading">INFORMACION</h2>
            <p class="lead">                   </p>
            <p class="lead" align=justify>Encontraras historias divertidas e interesantes de otras personas donde podras comentarlas y puntuarlas,dando a escojer cual es la mejor historia. En la cual podras disfrutar con el mayor realismo el recorrido por los diversos destinos de Perú</p>
          </div>
          <div class="col-md-6">
            <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500 x 500" src="Imagenes/Adventure.jpg" data-holder-rendered="true">
          </div>
        </div>



    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 col-md-push-5">
        <h2 class="featurette-heading">ATREVETE A CONOCER EL PERÚ</h2>
        <p class="lead">                   </p>
        <p class="lead" align=justify >Viajar al Perú es despertar sueños pendientes, es conectarse con uno mismo, es adentrarse en 5 mil años de historia viva. Prepárate para dominar olas sobre caballitos de totora, tablas de surf y disfrutar de puestas del sol en oasis con protectoras dunas. En la sierra, con el sonido de quenas en el viento, respirarás el aire puro de los Andes y contemplarás con devoción la armonía del hombre con la naturaleza en Machu Picchu. En la selva, el río Amazonas te dará la bienvenida con delfines rosados y te invitará a bailar, a ser libre. Recorrer las regiones del Perú es disfrutar de una gastronomía mestiza, única y reconocida en el mundo. Si el corazón te dice que sí, atrévete a visitarlo.</p>
        </div>
      <div class="col-md-5 col-md-pull-7">
        <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500 x 500" src="Imagenes/Lugares.png" data-holder-rendered="true">
      </div>
    </div>
    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

</div><!-- /.container -->

<jsp:include page="script.jsp"/>

</body>
</html>