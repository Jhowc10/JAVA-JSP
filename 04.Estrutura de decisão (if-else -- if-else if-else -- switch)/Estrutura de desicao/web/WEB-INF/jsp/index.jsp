<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    // Declaração das variáveis para o programa
    int opcao       = 2 ;
    int idade       = 18;
    int temperatura = 22;
    
    String sexo     = null;
    String resposta = null;

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <h1>Estrura de Decisãi: if-else</h1>
        
        <%
            // Exemplo de decisão com if-else
            if(idade >= 18){
                resposta = "É MAIOR de idade!";
            }else{
                resposta = "É MENOR de idade!";
            }
        %>
        
        <h2>Se é igual ou maior que 18 anos, então <%= resposta %></h2>
        
        
        
        <h1>Estrura de Desição: if-else if-else</h1>
        
        <%
            // Exemplo de decisão com if-else if-else
            if(temperatura < 18){
                resposta = "Está frio!";
                
            }else if(temperatura >= 18 && temperatura < 23){
                resposta = "A temperatura está amena";
                
            }else{
                resposta = "Está calor";
            }
        %>
        
        <h2>Se temperatura é igual a 30, então <%= resposta %></h2>
        
        
        <h1>Estrutura de Decisão: switch</h1>
        
        <%
            // Exemplo de decisão com switch
            switch(opcao){
                case 1:
                    resposta = "Foi escolhida a opção 1";
                    break;
                    
                case 2:
                    resposta = "Foi escolhida a opção 2";
                    break;
                    
                default:
                    resposta = "Outra opção foi escolhida";
                   break; 
            }
        %>
        
        <h2>Se a opção é igual a 2, então <%= resposta %></h2>
    </body>
</html>
