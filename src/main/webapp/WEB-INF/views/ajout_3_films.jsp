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
            <form:input path="film1"/>
            <form:input path="film2"/>
            <form:input path="film3"/>
            
            <input type="submit" value="ajouter"/>
        </form:form>
    </body>
</html>
