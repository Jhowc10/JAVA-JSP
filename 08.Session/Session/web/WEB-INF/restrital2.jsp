<%-- 
    Document   : restrital2
    Created on : 27 de abr. de 2025, 10:36:05
    Author     : tatia
--%>

<%@page errorPage="mensagem.jsp" %>

<%
    if(session.getAttribute("usuario") == null){
        throw new RuntimeException("Esta página é de acesso restrito. Efetue o login para continuar!<br>");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Olá, <strong><% out.print(session.getAttribute("usuario")); %></strong></h1>
        
        <h2>Está é a página restrita <strong>2</strong></h2>
        
        <a href="restrita1.jsp">Página restrita 1</a>
        <a href="logout.jsp"   >Logout           </a>
    </body>
</html>
