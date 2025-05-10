<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado do Request</title>
    </head>

    <body>
        <h1>Valores informados diretamente na URL</h1>
        <%
            // Declaração das variáveis que receberão os dados vindos do formulário
            String campo1 = request.getParameter("campo1");
            String campo2 = request.getParameter("campo2");
        %>
        
        <!--Abaixo são apresentados os valores recuerados da outra página e apresentados no navegador-->
        <p>Valor do campo 1: <% out.print(campo1); %></p>
        <p>Valor do campo 2: <% out.print(campo2); %></p>
    </body>
</html>

