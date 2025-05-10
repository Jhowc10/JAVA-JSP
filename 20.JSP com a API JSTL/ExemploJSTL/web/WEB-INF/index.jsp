<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Usando a JSTL</title>
    </head>
    <body>
        <c:forEach var="i" begin="1" end="10" step="1">
            <c:out value="${i}" /><br />
        </c:forEach>
    </body>
</html>