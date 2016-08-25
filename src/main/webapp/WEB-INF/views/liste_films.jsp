<%-- 
    Document   : liste_films
    Created on : 23 août 2016, 14:34:41
    Author     : admin
--%>
<%-- Debut entete--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!--ajouter library jstl sinon $.. ne fonctionne pas-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div>
    <table>
        <tr>
            <th><a href="<spring:url value="/lister_films"></spring:url>" >Liste Films</a>***</th>
            <th><a href="<spring:url value="/ajouter_films"></spring:url>" >Ajouter Films</a>***</th>
            <th><a href="<spring:url value="/lister_genres"></spring:url>" >Liste Genres</a>***</th>
            <th><a href="<spring:url value="/ajouter_genre"></spring:url>" >Ajouter Genres</a>***</th>
            </tr>
        </table>
    </div> 
<%-- Fin entete--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><spring:message code="cle1"/></h1>
        <c:forEach items="${listefilms}" var="film">
            ${film.titre} 
                          <a href="<spring:url value="/modifier_film/${film.id}"></spring:url>"> ¤</a>
                          <a href="<spring:url value="/supprimer_film/${film.id}"></spring:url>"> x</a><br/>
        </c:forEach>
    </body>
</html>
