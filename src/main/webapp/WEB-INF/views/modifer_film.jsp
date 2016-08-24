<%-- 
    Document   : modifer_film
    Created on : 24 août 2016, 16:00:25
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
        <h1>Modifier film!</h1>

        <form:form modelAttribute="film">
            Titre: <form:input path="titre" ></form:input>
                <br/>
                Année: <form:input path="anneeProd"></form:input>
                <br/>
                Synopsis: <form:textarea path="synopsis"></form:textarea>
                <br/>
                Genre: <form:select  path="genre.id" items="${genres}" itemLabel="nom" itemValue="id">

            </form:select>
            <input type="submit" value="ajouter"/>
        </form:form>

    </body>
</html>