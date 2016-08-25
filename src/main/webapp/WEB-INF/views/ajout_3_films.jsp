<%-- 
    Document   : ajout_3_films
    Created on : 25 août 2016, 13:42:25
    Author     : pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
