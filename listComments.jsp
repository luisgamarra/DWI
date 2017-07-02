<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 01/07/2017
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Comments</title>
</head>
<body>
<jsp:useBean id="service" class="pe.edu.utp.BDWebApplication.services.APService"/>
<c:forEach var="comment" items="${service.comments}">
    <p><c:out value="${comment.description}"/>
        <c:out value="${service.getStoriesCountForComment(comment)}"/></p>
</c:forEach>
</body>
</html>
