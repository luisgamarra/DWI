<%--
  Created by IntelliJ IDEA.
  User: metro
  Date: 09/07/2017
  Time: 19:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>
<html>
<head>

    <jsp:include page="bootstrap.jsp"/>
    <title>Page Adventures</title>
</head>
<body>
<jsp:useBean id="service" class="pe.pageadventures.services.HRService"/>

<!-- ----------------------------Navigation -------------------------------------------------------------->
<b:navbar inverse="true" fixed="top">
    <!-- Container -->
    <b:container >
       <b:navbarbrand href="index.html">Page Adventure</b:navbarbrand>
        <b:nav pull="right" >
            <b:navbarbrand >About</b:navbarbrand>
            <b:navbarbrand >Services</b:navbarbrand>
            <b:navbarbrand >Contact</b:navbarbrand>
            <b:navbarbrand >Ayuda</b:navbarbrand>
            <b:navbarbrand href="RegisterAccount?action=add">Registrate</b:navbarbrand>
            <b:navbarbrand href="Login.jsp">Iniciar Sesion</b:navbarbrand>
        </b:nav>
    </b:container>
    <!-- /.container -->
</b:navbar>

<!-----------------------------Carousel------------------------------------------------------------------->
<b:carouselitem>
    <b:carousel controls="true" indicators="true">
        <b:image src="http://www.peru.travel/Portals/_default/que-hacer/milenario/santuario-machu/1600x400.jpg"></b:image>
    </b:carousel>
</b:carouselitem>
<!--------------------------------------------------------------------------------------------------------->

<!-- Page Content -->
<div class="container">
    <!-- Marketing Icons Section -->
    <b:div>
        <b:pageheader level="1" label=" Welcome to Page Adventures">
        </b:pageheader>
    </b:div>

    <b:column md="6">
        <b:image src="http://static.azteca.com/crop/crop.php?width=580&height=&img=http://static.azteca.com/imagenes/2015/14/registrate-aqui-viva-el-show-1964698.jpg&coordinates=50,50" shape="rounded" thumbnail="true"></b:image>

        <p>
            <br/>
            <h4><b:glyphicon type="film" />
            Comparte Fotos y videos</h4>
        </p>

        <p>
             <h4><b:glyphicon type="list"/>
            Encuentra informacion de lugares turisticos</h4>
        </p>

        <p>
        <h4><b:glyphicon type="list-alt"/>
            Escribe tus experiencias de tus viajes</h4>
        </p>

        <p>
        <h4><b:glyphicon type="share"/>
            Comenta u opina sobre las incidencias o hechos de otros usuarios</h4>
        </p>
    </b:column>

    <b:column md="6">
        <b:well>
            <h3 align="center">Registrate</h3>
            <hr />

            <form method="post" action="accounts">

               <b:formgroup>
                    <label for="type" class="cols-sm-2 control-label">Type Account</label>

                       <b:inputgroup>
                            <b:inputgroupaddon><b:glyphicon type="plus"/></b:inputgroupaddon>
                            <b:formcontrol type="select" name="type">
                                <option>Enterprise</option>
                                <option>User</option>
                            </b:formcontrol>
                       </b:inputgroup>
               </b:formgroup>

                <b:formgroup>
                    <label for="name" class="cols-sm-2 control-label">Your Name Account</label>

                        <b:inputgroup>
                            <b:inputgroupaddon><b:glyphicon type="pencil"/></b:inputgroupaddon>
                            <b:formcontrol type="text" name="name" id="name"  placeholder="Enter your Name"/>
                        </b:inputgroup>
                </b:formgroup>

                <b:formgroup>
                    <input type="hidden" value="${action == 'add' ? 'create' : ''  }" name="action"/>
                    <b:button context="success" block="true" type="submit">Next</b:button>
                </b:formgroup>

            </form>
        </b:well>
    </b:column>

    <br/>

    <b:column md="12">
        <hr/>
        <p align="center">Copyright &copy; Your Website 2017</p>
    </b:column>

</div>

</body>
</html>
