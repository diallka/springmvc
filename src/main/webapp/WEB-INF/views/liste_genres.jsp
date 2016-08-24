<%-- 
    Document   : lsite_genre
    Created on : 24 août 2016, 09:40:30
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Liste genres!</h1>
        <c:forEach items="${listegenres}" var="genre">
            ${genre.nom} <br/>
        </c:forEach>
           
  
    </body>
</html>
