<%--
  Created by IntelliJ IDEA.
  User: Erick Rojas
  Date: 31/07/2017
  Time: 12:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="b" uri="http://bootstrapjsp.org/" %>
<html>
<head>

    <jsp:include page="bootstrap.jsp"/>
    <link href="/carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="css/footer-basic-centered.css">
    <title>Register Enterprise</title>

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
                    <a> <img src="Imagenes/UP.png" alt="" width="80" align="left"></a>
                    <a class="navbar-brand" href="#PAGEADVENTURE">Page Adventure</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li ><a href="index.jsp">Home</a></li>
                        <li><a href="About.jsp">About us</a></li>
                        <li><a href="New.jsp">New</a></li>
                        <li><a href="Login.jsp">Login</a></li>
                        <li class="active"><a href="RegisterEnterprise.jsp">Register Enterprise</a></li>
                        <li><a href="RegisterUser.jsp">Register</a></li>
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
                <img class="first-slide" height="500px" src="Imagenes/Imagen4.jpg" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">
                        <h2>¡Sé parte de nuestra comunidad!</h2>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="second-slide" height="500px" src="Imagenes/Imagen5.jpg" alt="Second slide">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Conoce un poco mas sobre el Perú</h1>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="third-slide"  height="500px" src="Imagenes/Imagen6.jpg" alt="Third slide">
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

        <div class="row ">

            <div class="col-md-4">
                <ul class="nav nav-tabs">
                    <li role="presentation" ><a href="LoginEnterprise.jsp">Login</a></li><li role="presentation" class="active"><a href="RegisterEnterprise.jsp">Register</a></li>
                </ul>

                <b:well>
                    <h3 align="center">Hello ${account.name} ${account.id}</h3>

                    <form  method="post" action="enterprise">
                        <b:formgroup>
                            <label for="username" class="cols-sm-2 control-label">Enterprise name</label>

                            <b:inputgroup>
                                <b:inputgroupaddon><b:glyphicon type="user"/></b:inputgroupaddon>
                                <b:formcontrol type="text" name="username" id="username"  placeholder="Enter your Enterprise name"/>
                            </b:inputgroup>
                        </b:formgroup>

                        <b:formgroup>
                            <label for="lastname" class="cols-sm-2 control-label">Your Name</label>

                            <b:inputgroup>
                                <b:inputgroupaddon><b:glyphicon type="pencil"/></b:inputgroupaddon>
                                <b:formcontrol type="text" name="lastname" id="lastname"  placeholder="Enter your name"/>
                            </b:inputgroup>
                        </b:formgroup>

                        <b:formgroup>
                            <label for="password" class="cols-sm-2 control-label">Password</label>

                            <b:inputgroup>
                                <b:inputgroupaddon><b:glyphicon type="pencil"/></b:inputgroupaddon>
                                <b:formcontrol type="text" name="password" id="password"  placeholder="Enter your password"/>
                            </b:inputgroup>
                        </b:formgroup>

                        <b:formgroup>
                            <label for="phone" class="cols-sm-2 control-label">Your Phone</label>

                            <b:inputgroup>
                                <b:inputgroupaddon><b:glyphicon type="pencil"/></b:inputgroupaddon>
                                <b:formcontrol type="text" name="phone" id="phone"  placeholder="Enter your phone"/>
                            </b:inputgroup>
                        </b:formgroup>

                        <b:formgroup>
                            <label for="email" class="cols-sm-2 control-label">Your Email</label>

                            <b:inputgroup>
                                <b:inputgroupaddon><b:glyphicon type="pencil"/></b:inputgroupaddon>
                                <b:formcontrol type="text" name="email" id="email"  placeholder="Enter your email"/>
                            </b:inputgroup>
                        </b:formgroup>

                        <b:formgroup>
                            <label for="photo" class="cols-sm-2 control-label">Your Photo</label>

                            <b:inputgroup>
                                <input type="file" name="photo" id="photo"  />
                            </b:inputgroup>
                        </b:formgroup>

                        <b:formgroup>
                            <input type="hidden" value="create" name="action"/>
                            <b:button context="primary" block="true" type="submit">Register</b:button>
                        </b:formgroup>
                    </form>
                </b:well>
            </div>

            <div class="col-md-4 col-sm-6 hero-feature">

                <div class="thumbnail">
                    <img src="Imagenes/Adventure.jpg" alt="">
                    <div class="caption">
                        <h3>INFORMACION</h3>
                        <p class="lead" align=justify>Encontraras historias divertidas e interesantes de otras personas donde podras comentarlas y puntuarlas,dando a escojer cual es la mejor historia. En la cual podras disfrutar con el mayor realismo el recorrido por los diversos destinos de Perú</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <iframe width="350" height="205" align="center" src="https://www.youtube.com/embed/skjWfV31enU" frameborder="0" allowfullscreen></iframe>
                    <div class="caption">
                        <h3>FOTOS Y VIDEOS</h3>
                        <p class="lead" align=justify>En Page Adventure te invitamos a compartir con nosotros , tus fotos y videos de sus experiencias vividas en las principales atracciones de cada destino del Perú.</p>
                    </div>
                </div>
            </div>

        </div>

        <br/>

        <hr class="featurette-divider">

        <div class="row featurette">
            <div class="col-md-7 col-md-push-5">
                <h2 class="featurette-heading">ATREVETE A CONOCER EL PERÚ</h2>
                <p class="lead">                   </p>
                <p class="lead" align=justify >Viajar al Perú es despertar sueños pendientes, es conectarse con uno mismo, es adentrarse en 5 mil años de historia viva. Prepárate para dominar olas sobre caballitos de totora, tablas de surf y disfrutar de puestas del sol en oasis con protectoras dunas. En la sierra, con el sonido de quenas en el viento, respirarás el aire puro de los Andes y contemplarás con devoción la armonía del hombre con la naturaleza en Machu Picchu. En la selva, el río Amazonas te dará la bienvenida con delfines rosados y te invitará a bailar, a ser libre. Recorrer las regiones del Perú es disfrutar de una gastronomía mestiza, única y reconocida en el mundo. Si el corazón te dice que sí, atrévete a visitarlo.</p>
            </div>
            <div class="col-md-5 col-md-pull-7">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16137391.29080895!2d-84.04311271442191!3d-9.082632022081835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c850c05914f5%3A0xf29e011279210648!2zUGVyw7o!5e0!3m2!1ses!2spe!4v1501448746544" width="450" height="480" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

    </div><!-- /.container -->

    <jsp:include page="script.jsp"/>

    <footer class="footer-basic-centered">


        <p class="footer-company-name">Page Adventures &copy; 2017</p>

    </footer>

</body>
</html>
