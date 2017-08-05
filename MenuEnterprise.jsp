<%@ taglib prefix="b" uri="http://bootstrapjsp.org/" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lucero
  Date: 31/07/2017
  Time: 12:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="bootstrap.jsp"/>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link href="ImageEnterprise.css" rel="stylesheet">
    <title>Menu</title>

</head>
<body>

<jsp:include page="MenutopEnterprise.jsp"/>


<div id="wrapper">

    <jsp:include page="MenuleftEnterprise.jsp"/>

</div>

<div>

    <center><img src="<c:out value="${user.photo}"/>"  align="center" width="320" higth="320" class="img-circle"> </center>
    <center> <h1><li class="list-group-item list-group-item-warning" > <FONT SIZE=8 color="black">Page Adventure te da la bienvenida <c:out value="${user.name}"/> </FONT> </li></h1> </center>

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

