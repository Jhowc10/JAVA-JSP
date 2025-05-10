<%@ page import="java.io.*,java.util.*" %>
 
<html>
    <head>
        <title>Exemplo do objeto Application</title>
    </head>
    <body>
        <%
            Integer hitsCount
                    = (Integer) application.getAttribute("contador");
            if (hitsCount == null || hitsCount == 0) {
                // Registra o primeiro visitante
                out.println("Olá, seja bem vindo!");
                hitsCount = 1;
            } else {
                // Retorno do visitante
                out.println("Bem vindo de volta!!!");
                hitsCount += 1;
            }
            application.setAttribute("contador", hitsCount);
        %>
        <p>Total de visitantes: <%= hitsCount%></p>
    </body>
</html>
