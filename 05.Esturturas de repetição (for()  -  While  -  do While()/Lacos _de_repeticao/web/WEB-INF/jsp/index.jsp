<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    // Declaração de variáveis para trabalhar com as repetições
    int i;
    int j;
    int resultado;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <h1>Estrutura de Repetição: for() - simples</h1>        
        <%
            // Repetição com a estrutura for() - laço simples
            for (i = 0; i < 10; i++) {
                // Realiza uma multiplicação da variável i por 2 a cada iteração
                resultado += i * 2;
            }
        %>
        
        <h2>Resultado: <%=resultado%></h2>
        
        
        
        <h1>Estrutura de Repetição: for() - encadeado</h1>
        <%
            resultado = 0;
            // Repetição com a estrutura for() - laço encadeado
            for (i = 0; i < 10; i++) {
                // Realiza uma multiplicação da variável i por k a cada iteração
                for (j = 0; j < 10; j++) {
                    resultado += i * j;
                }
            }
        %>
        
        <h2>Resultado: <%=resultado%></h2>
        
        
        
        <h1>Estrutura de Repetição: while()</h1>   
        <%
            // Atribui zero as variáveis utilizadas anteriormente
            resultado = 0;
            i = 0;
            // Repetição com a estrutura while()
            while (i < 10) {
                // Realiza uma multiplicação da variável i por 2 a cada iteração
                resultado += i * 2;
 
                // Incrementa em um a cada iteração
                i++;
            }
        %>
        
        <h2>Resultado: <%=resultado%></h2>   
        
        
        
        <h1>Estrutura de Repetição: do while()</h1>
        <%
            // Atribui zero as variáveis utilizadas anteriormente
            resultado = 0;
            i = 0;
            
            // Repetição com a estrutura while()
            do {
                // Realiza uma multiplicação da variável i por 2 a cada iteração
                resultado += i * 2;
 
                // Incrementa em um a cada iteração
                i++;
                
            } while (i < 10);
        %>
        
        <h2>Resultado: <%=resultado%></h2>
    </body>
</html>
