<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- 
            Recebe uma mensagem de erro enviada pelo Controle (Servlet) e mostra
            ao cliente. Este arquivo é utilizado em diversas situações como
            erros de inclusão e confirmação de ações.
        -->
        <h1>Mensagem: <% out.print(request.getAttribute("mensagem"));%></h1>
        <!-- 
            Disponibiliza um link para a página de cadastro.html
        -->
        <h2><a href="cadastrar.html">Voltar</a></h2>
    </body>
</html>
