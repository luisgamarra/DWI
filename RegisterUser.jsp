<%--
  Created by IntelliJ IDEA.
  User: Luis
  Date: 09/07/2017
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>
<html>
<head>

    <jsp:include page="bootstrap.jsp"/>
    <title>Title</title>
</head>
<body>

<!-- Navigation -->

<b:navbar inverse="true" fixed="top">

    <b:container >

        <b:navbarbrand href="index.html">Page Adventure</b:navbarbrand>

        <b:nav pull="right" >
            <b:navbarbrand >About</b:navbarbrand>
            <b:navbarbrand >Services</b:navbarbrand>
            <b:navbarbrand >Contact</b:navbarbrand>
            <b:navbarbrand >Ayuda</b:navbarbrand>
            <b:navbarbrand >Registrate</b:navbarbrand>
            <b:navbarbrand href="Login.jsp">Iniciar Sesion</b:navbarbrand>
        </b:nav>

    </b:container>

</b:navbar>

<!---------------------------------------------------------------------->

<b:carouselitem>
    <b:carousel controls="true" indicators="true">
        <b:image src="http://www.peru.travel/Portals/_default/que-hacer/milenario/santuario-machu/1600x400.jpg"></b:image>
    </b:carousel>
</b:carouselitem>


<!---------------------------------------------------------------------->



<!---------------------------------------------------------------------->
<!-- Page Content -->
<div class="container">

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
            <h3 align="center">Hello ...</h3>
            <hr />

            <form  method="post" action="users">

                <b:formgroup>
                    <label for="username" class="cols-sm-2 control-label">Username</label>

                        <b:inputgroup>
                            <b:inputgroupaddon><b:glyphicon type="user"/></b:inputgroupaddon>
                            <b:formcontrol type="text" name="username" id="username"  placeholder="Enter your Username"/>
                        </b:inputgroup>                    
                </b:formgroup>

                <b:formgroup>
                    <label for="lastname" class="cols-sm-2 control-label">Your LastName</label>

                    <b:inputgroup>
                        <b:inputgroupaddon><b:glyphicon type="pencil"/></b:inputgroupaddon>
                        <b:formcontrol type="text" name="lastname" id="lastname"  placeholder="Enter your LastName"/>
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
                        <b:inputgroupaddon><b:glyphicon type="pencil"/></b:inputgroupaddon>
                        <b:formcontrol type="text" name="photo" id="photo"  placeholder="Enter your photo"/>
                    </b:inputgroup>
                </b:formgroup>

                <b:formgroup>
                    <input type="hidden" value="${action == 'add' ? 'create' : ''  }" name="action"/>
                    <b:button context="primary" block="true" type="submit">Register</b:button>
                </b:formgroup>

                    <a href="index.php" align="center">Login</a>

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
