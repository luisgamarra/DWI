<%@ taglib prefix="taglib" uri="http://bootstrapjsp.org/" %>
<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 31/07/2017
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="bootstrap.jsp"/>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link href="Anuncios.css" rel="stylesheet">

    <title>Anuncios</title>

</head>
<body>

<jsp:include page="MenutopEnterprise.jsp"/>


<div id="wrapper">

    <jsp:include page="MenuleftEnterprise.jsp"/>
    <br/><br/>

    <div class="wrap">
        <div class="tarjeta-wrap">
            <div class="tarjeta">
                <div class="adelante card1"></div>
                <div class="atras">
                    <p> </p>
                    <p align=justify> El rafting o canotaje es una de las actividades al aire libre más tradicionales de Lunahuaná y mayormente se ofrecen full days que incluyen el canotaje. Después de una charla sobre las técnicas de remado y las medidas de seguridad te embarcarás en una gran aventura.Donde es uno de los lugares que se puede disfrutan con una gran cantidad de gente.</p>
                </div>
            </div>
        </div>
        <div class="tarjeta-wrap">
            <div class="tarjeta">
                <div class="adelante card2"></div>
                <div class="atras">

                    <p align=justify>Huaraz, la ciudad está flanqueada por las Cordilleras Blanca y Negra, hacia el este y oeste respectivamente, formando el valle popularmente conocido como el Callejón de Huaylas, por el cual discurre el río Santa que se abre paso por los Andes hasta el Cañón del Pato, para desembocar finalmente en el Océano Pacífico. Donde que podra disfrutar su viaje con sus amigos o familiares</p>
                </div>
            </div>
        </div>
        <div class="tarjeta-wrap">
            <div class="tarjeta">
                <div class="adelante card3"></div>
                <div class="atras">

                    <p align=justify>Tarapoto ofrece una gran variedad de hoteles y hostales tanto en la ciudad como en sus alrededores para el turista y la persona de negocios. Disfrute de los hermosos paisajes, de la flora, de la fauna, nuestras cataratas y del turismo de aventura (canotaje, white water rafting, expediciones y caminatas).     </p>
                </div>
            </div>
        </div>
    </div>
    <div class="wrap">
        <div class="tarjeta-wrap">
            <div class="tarjeta">
                <div class="adelante card4"></div>
                <div class="atras">

                    <p align=justify>Tumbes tiene una gran variedad de lugares que puedes disfrutar una organizacion o grupos de amigos, presenta un clima cálido todo el año con una temperatura promedio de 24ºC y una máxima de 36ºC de temperatura.</p>
                </div>
            </div>
        </div>
        <div class="tarjeta-wrap">
            <div class="tarjeta">
                <div class="adelante card5"></div>
                <div class="atras">
                  <p align=justify>La Huacachina esta ubicado a cinco horas al sur de Lima, el oasis del desierto de Huacachina alberga un extraordinario tour de aventura llamado "buggy de dunas y tour de sandboard". Esta excursión es emocionante y hermosa, transportándote a altas velocidades en el desierto para ver las enormes dunas de arena en la costa. </p>
                </div>
            </div>
        </div>
        <div class="tarjeta-wrap">
            <div class="tarjeta">
                <div class="adelante card6"></div>
                <div class="atras">

                    <p align=justify>En el Valle del Colca alpacas y vizcachas, que son hermosos camélidos propios de la zona. donde podra tomarse fotos con los hermosos paisajes que se encuentra en lugar ya sea con sus amigos o grupo de personas.</p>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>


</body>
</html>
