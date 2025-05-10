<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    // Criação de um método com retorno que realiza a soma de dois valores informados
    public double soma(double valor1, double valor2){
        return (valor1 + valor2);
    }

    // Declaração das variáveis
    String nome;
    double peso;
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <h1>Declaração de variáveis e métodos</h1>
        
        <%
            // Realiza o cálculo atráves de um método e mosra o resultado
            out.print(soma(10, 20));
            out.print("<br>");
            
            // Atribuição de valor a variável nome e apresentação
            nome = "Jonathas Correia Marangone";
            
            // Atribuição de valor a uma variável peso
            peso = 80.3;
            
            out.print("Olá " + " o seu peso é " + peso);
        %>
    </body>
</html>
