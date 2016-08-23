<%-- 
    Document   : liste_films
    Created on : 23 août 2016, 14:34:41
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
        <u>${titre}</u>
        
        <br/>
       
            ${listefilms}<br/>
     
            
            <a href="ajouter_films">Ajouter</a>
    </body>
</html>
