<%@page import="java.util.List"%>
<%@page import="bean.Pessoa"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MVC - Listagem</title>
        <link rel="stylesheet" type="text/css" href="view/css/estilo.css" media="screen" />
    </head>
    <body>
        <h1>Listagem dos Registros</h1>
        <table>
            <thead>
            <th>ID</th>
            <th>Nome</th>
            <th>Sexo</th>
        </thead>
        <tbody>
            <%
                /**
                 * Cria uma lista para receber os registros do atributo
                 * listaPessoas originado do servlet
                 */
                List<Pessoa> pessoas = (ArrayList) request.getAttribute("listaPessoas");
 
                // Vamos percorrer a lista dos registros e apresentar no navegador
                for (Pessoa p : pessoas) {
            %>
            <tr>
                <td><%=p.getId()%></td>
                <td><%=p.getNome()%></td>
                <td><%=p.getSexo()%></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
    <br>
    <a href="index.html">Retornar</a>
</span>
</html>
