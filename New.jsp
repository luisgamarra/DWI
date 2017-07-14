<%--
  Created by IntelliJ IDEA.
  User: Luz
  Date: 14/07/2017
  Time: 4:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="bootstrap.jsp"/>
    <title>New</title>
    <link href="carousel.css" rel="stylesheet">
</head>
<body>

<div class="navbar-wrapper">
    <div class="container">
        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Page Adventure</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="About.jsp">Quienes somos</a></li>
                        <li class="active"><a href="#new">Noticias</a></li>
                        <li><a href="Information.jsp">Ayuda</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <p>  </p>

    <div class="row">

        <div class="col-lg-4">
            <center><img class="img-circle" src="Imagenes/Noticia1.jpeg" alt="Generic placeholder image" width="140" height="140" ></center>
            <h2 align=center>Tacna: turistas chilenos invierten US$100 al día en el Perú</h2>
            <p  align=justify>Rubén Laquita Espinoza, titular de la Dircetur Tacna, precisó que al día ingresan 7.000 turistas chilenos. “Para los chilenos la inversión en Tacna representa la cuarta parte de sus gastos”, explicó el  funcionario a la Agencia Andina.Además, detalló que entre enero y mayo de este año ingresaron un total de 767.294 visitantes chilenos y la tendencia en el mes de junio fue de 103.394, cifra que aún tiene que confirmarse. </p>
        </div>

        <div class="col-lg-4">
            <center><img class="img-circle" src="Imagenes/Noticia2.jpeg" alt="Generic placeholder image" width="140" height="140"></center>
            <h2 align="center">Doce acciones que se requieren para convertir al Perú en potencia turística</h2>
            <p align="justify">Dichas acciones permitirán que el país reciba en el 2021 unos 7 millones de turistas extranjeros y que el sector genere 4 millones de puestos de trabajo. En el 2015 llegaron 3,5 millones, que permitieron emplear a 2 millones de pasajeros.  "Esto todavía no ha pasado. Tenemos que destrabar muchas cosas. Si no lo hacemos, no vamos a poder lograr esta meta, que no es poca cosa, pero sí es posible", resaltó en relación a los proyectos. </p>
        </div><!-- /.col-lg-4 -->

        <div class="col-lg-4">
            <center><img class="img-circle" src="Imagenes/Noticia3.jpeg" alt="Generic placeholder image" width="140" height="140"></center>
            <h2 align="center">BCR: Turistas extranjeros gastaron US$825 millones en Perú en el primer trimestre</h2>
            <p align="justify">Los turistas extranjeros que visitaron el Perú durante el primer trimestre de 2017 gastaron un total de US$825 millones, según informó el Banco Central de Reserva del Perú (BCR).La cifra indicada es mayor en 1 por ciento (US$7 millones) respecto al mismo periodo del año previo, precisó el BCR. Durante el período también aumentó el número de turistas que llegó al Perú.</p>
        </div><!-- /.col-lg-4 -->

    </div><!-- /.row -->

    <hr>

    <div class="row">

        <div class="col-lg-4">
            <center><img class="img-circle" src="Imagenes/Noticia4.jpg" alt="Generic placeholder image" width="140" height="140" ></center>
            <h2 align=center>Machu Picchu: 10 años de ser elegida una de las maravillas del mundo moderno</h2>
            <p  align=justify>Hace 10 años, un 7 de julio de 2007, Perú se encontraba de fiesta. Machu Picchu, uno de los lugares más visitados del país por turistas peruanos y extranjeros, se convertía en una de las Siete Nuevas Maravillas del Mundo Moderno.Es así que Machu Picchu era elegida junto a la Muralla China, el Taj Mahal de la India, la ciudad de Petra en Jordania, el Coliseo Romano de Italia, el Cristo Redentor de Río de Janeiro y la ciudad maya de Chichén Itzá de México.</p>
        </div>

        <div class="col-lg-4">
            <center><img class="img-circle" src="Imagenes/Noticia5.jpg" alt="Generic placeholder image" width="140" height="140"></center>
            <h2 align="center">Valle del Colca: visitantes arequipeños ingresarán gratis en Fiestas Patrias</h2>
            <p align="justify">Con el objetivo de incrementar el flujo turístico al valle del Colca durante el fin de semana largo por Fiestas Patrias , la Autoridad Autónoma del Colca (Autocolca) dispuso el ingreso gratuito de los visitantes arequipeños que concurran al principal destino turístico de la región Arequipa , del 27 al 30 de julio.David Valdivia, gerente de la Autoridad Autónoma del Colca (Autocolca), precisó que los arequipeños podrán ingresar al valle del Colca con la sola presentación de su Documento Nacional de Identidad (DNI) y recorrer la zona sin restricción alguna.</p>
        </div><!-- /.col-lg-4 -->

        <div class="col-lg-4">
            <center><img class="img-circle" src="Imagenes/Imagen6.jpg" alt="Generic placeholder image" width="140" height="140"></center>
            <h2 align="center">3 deportes de aventura que puedes hacer en Lunahuaná</h2>
            <p align="justify">Volvemos a tener un fin de semana largo, por lo que muchas personas aprovecharán estos días para viajar por el Perú y disfrutar de momentos divertidos junto a sus familiares y amigos. Por ejemplo, uno de los lugares más elegidos suele ser Lunahuaná, especialmente porque aquí las personas pueden realizar canotaje, deporte que a muchos les gusta.Sin embargo, ese no es el único deporte que las personas pueden hacer, existen otras actividades como cuatrimoto, rapel y canopy, los cuales lograrán que los amantes de la aventura se dejen llevar por la adrenalina y disfruten del momento al máximo.</p>
        </div><!-- /.col-lg-4 -->

    </div><!-- /.row -->
    <hr>
</div>

<jsp:include page="script.jsp"/>

</body>
</html>
