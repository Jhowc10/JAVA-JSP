<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Pages</title>
    </head>

    <body>
        <h1>Operação e Conversões</h1>
        
        <%
            // Declaração de variáveis com vários tipos.
            int valor1 = 10;
            int valor2 = 20;
            
            String valor3 = "30";
            
            // Realiza uma adição
            // Percebaa inclusão do <br> com a fina.idade de pular uma linha no HTLM
            // Neste caso foi utilizada a conversão de String para inteiro (valor3)
            out.print("<br>Resultado = " + (Integer.parseInt(valor3)));
            
            // Realizando uma divisão - Necessidade de CAST para os demais
            out.print("<br>Resultado = " + (((double) valor1 / (double) valor2)));
            
            // Realizando uma multiplicação
            out.print("<br>Resultado = " + (valor1 * valor2));
        %>  
    </body>
</html>
