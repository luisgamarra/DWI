<%--
  Created by IntelliJ IDEA.
  User: Luz
  Date: 13/07/2017
  Time: 6:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="bootstrap.jsp"/>
    <link href="About.css" rel="stylesheet">
    <title>About us</title>

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
                        <li><a href="index.jsp">Home</a></li>
                        <li class="active"><a href="#about">Quienes Somos</a></li>
                        <li><a href="#contact">Noticias</a></li>
                        <li><a href="Information.jsp">Ayuda</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>


<div class="container">

    <div class="row">

        <div class="col-sm-8 blog-main">

            <div class="blog-post">
                <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500 x 500" src="Imagenes/about.jpg" data-holder-rendered="true">
                <hr>
                <h1 class="blog-post-title">¿Quiénes somos?</h1>
                <hr>
                <h3 >Nuestra Historia</h3>
                <p align=justify>Nuestra pagina web nace en el año 2017 ,por cuatro alumnos de la universidad Tecnologica del Perú,para la cual se juntaron para crear una aplicación web donde podrás ingresar y tener una mejor idea de viajar y conocer los lugares del Perú a traves de las aventuras de otras personas que recorrieron dicho lugar. </p>
                <hr>
                <h3>Nuestra misión</h3>
                <p align=justify>Desde la creación, nuestra misión es lograr que, los visitantes a nuestro sitio web, tengan la información de los mejores lugares Turisticos del Perú y ademas puedan publicar sus experiencias. Ser el principal portal Turístico en el Perú, donde se pueda realizar la publicación de sus experiencias mediante fotos o videos y asi poder comentarlas o puntuarlas segun el punto de vista de cada persona.</p>
                <hr>
                <h3>Nuestra visión</h3>
                <p align=justify>En los proximos años,convertirnos en una de las mejores alternativas de búsqueda de lugares turísticos en el Perú.Aprovechar nuestras fortalezas y oportunidades cada día más,para poder asi realizar actualizaciones para mantener a gusto a nuestra comunidad virtual,los cuales harán de nuestra aplicacion web diferente a los demás, pero sin dejar de lado nuestro compromiso de seguir difundiendo información sobre los lugares turísticos de nuestra región y del Perú.</p>
                <hr>
                <h3>Autores</h3>

                <ul>
                    <li class="glyphicon glyphicon-pencil">  Carlos Castillo, Diego Fernando</li>
                    <p> </p>
                    <li class="glyphicon glyphicon-pencil">  Gamarra Astocondor, Luis Alberto</li>
                    <p> </p>
                    <li class="glyphicon glyphicon-pencil">  Olivares Villena, Lucero</li>
                    <p> </p>
                    <li class="glyphicon glyphicon-pencil">  Rojas Chilet, Erick Ricardo</li>
                </ul>

                </p>
            </div><!-- /.blog-post -->
        </div><!-- /.blog-main -->

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
            <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500 x 500" src="Imagenes/Ancash.jpg" data-holder-rendered="true">
            <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500 x 500" src="Imagenes/Cusco.png" data-holder-rendered="true">
            <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500 x 500" src="Imagenes/Huancayo.jpg" data-holder-rendered="true">
            <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500 x 500" src="Imagenes/Ica.jpg" data-holder-rendered="true">
            <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500 x 500" src="Imagenes/Selva.jpg" data-holder-rendered="true">
            <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="500 x 500" src="Imagenes/Selva1.jpg" data-holder-rendered="true">

         </div><!-- /.blog-sidebar -->

    </div><!-- /.row -->
    <hr>
</div><!-- /.container -->
        <jsp:include page="script.jsp"/>
</body>
</html>
