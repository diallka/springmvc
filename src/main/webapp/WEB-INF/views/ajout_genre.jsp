<%-- 
    Document   : ajout_genre
    Created on : 24 août 2016, 09:40:50
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
        <h1>Ajout genre!</h1>
         <form:form modelAttribute="genre">
            Nom: <form:input path="nom"></form:input>
            <br/>
            
            <input type="submit" value="ajouter"/>
        </form:form>
            <br/>
            <a href="liste_genres">Liste genres</a>
        <fo
    </body>
</html>
