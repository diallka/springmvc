<%-- 
    Document   : liste_series
    Created on : 23 août 2016, 15:32:34
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
        <c:forEach items="${listeseries}" var="serie">
            ${serie.id}
        </c:forEach>
    </body>
</html>
