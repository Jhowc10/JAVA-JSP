<%-- 
    Document   : restrital1
    Created on : 27 de abr. de 2025, 10:35:49
    Author     : tatia
--%>

<%@page errorPage="mensagem.jsp"%>

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
        <h1>Olá, <% out.print(session.getAttribute("usuario")); %></h1>
        
        <h2>Está é a página restrita <strong>1</strong></h2>
        
        <a href="restrita2.jsp">Pagina restrita 2</a>
        <a href="logout.jsp"   >Logout           </a>
    </body>
</html>
