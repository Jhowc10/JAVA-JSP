<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.isNew()){
        session.setAttribute("status", "Seja bem vindo!");
    } else{
        session.setAttribute("status", "Que bom que voltou!");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><% out.print(session.getAttribute("status")); %></h1>
    </body>
</html>
