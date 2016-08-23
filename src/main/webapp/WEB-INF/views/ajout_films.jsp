<%-- 
    Document   : ajout_films
    Created on : 23 août 2016, 16:17:00
    Author     : admin
--%>
<!--A rajouter à la main-->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ajout films!</h1>
        
        <form:form modelAttribute="film">
            Titre: <form:input path="titre"></form:input>
            <br/>
            Année: <form:input path="anneeProd"></form:input>
            <br/>
            Synopsis: <form:textarea path="synopsis"></form:textarea>
            <br/>
            <input type="submit" value="ajouter"/>
        </form:form>
    </body>
</html>
