<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*, java.util.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo de Requisições HTTP</title>
    </head>

    <body>
        <center>
            <h2>Exemplo de Requisições HTTP</h2>
            <table width="100%" border="1" align="center">
                <tr bgcolor="#949494">
                    <th style="width: 200px;">Nome do Cabeçalho</th>
                    <th>Valor(es) do Cabeçalho</th>
                    <%
                        // o Enumeration que contém uma lista de constantes, as quais serão recuperadas por meio do request.getHeaderNames(). 
                        Enumeration NomesCabecalho = request.getHeaderNames();
                        
                        while(NomesCabecalho.hasMoreElements()){
                            String nomeParametro = (String) NomesCabecalho.nextElement();
                            out.print("<tr><td>" + nomeParametro + "</td> \n");
                            
                            String valorParametro = request.getHeader(nomeParametro);
                            out.println("<td> " + valorParametro + "</td></tr> \n");
                    }
                    %>
                </tr>
            </table>
        </center>
    </body>
</html>
