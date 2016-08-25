<%-- 
    Document   : ajout_3_films
    Created on : 25 août 2016, 13:42:25
    Author     : pro
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
            <th><a href="<spring:url value="/validation"></spring:url>" >Validateur form</a>***</th>
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
        <h1>Ajout 3 Films</h1>
         <form:form modelAttribute="dto">
            Titre: <form:input path="film1.titre"></form:input>
                <br/>
                Année: <form:input path="film1.anneeProd"></form:input>
                <br/>
                Synopsis: <form:textarea path="film1.synopsis"></form:textarea>
                <br/>
                Genre: <form:select  path="film1.genre.id" items="${listegenres}" itemLabel="nom" itemValue="id">

            </form:select>
                
             Titre: <form:input path="film1.titre"></form:input>
                <br/>
                Année: <form:input path="film1.anneeProd"></form:input>
                <br/>
                Synopsis: <form:textarea path="film1.synopsis"></form:textarea>
                <br/>
                Genre: <form:select  path="film1.genre.id" items="${listegenres}" itemLabel="nom" itemValue="id">

            </form:select>
             Titre: <form:input path="film1.titre"></form:input>
                <br/>
                Année: <form:input path="film1.anneeProd"></form:input>
                <br/>
                Synopsis: <form:textarea path="film1.synopsis"></form:textarea>
                <br/>
                Genre: <form:select  path="film1.genre.id" items="${listegenres}" itemLabel="nom" itemValue="id">

            </form:select>
            <input type="submit" value="ajouter"/>
        </form:form>
    </body>
</html>
