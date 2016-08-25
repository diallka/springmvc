<%-- 
    Document   : validation_form
    Created on : 25 août 2016, 15:58:03
    Author     : pro
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Validation formulaire!</h1>
        
        <form:form modelAttribute="validator">
            String 1: <form:input path="str1"/><br/>
            String 2: <form:input path="str2"/><br/>
            String 3: <form:input path="str3"/><br/>
            <input type="submit" value="valider" />
        </form:form>
    </body>
</html>
