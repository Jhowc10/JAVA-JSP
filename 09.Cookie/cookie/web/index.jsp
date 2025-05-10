<%
    /**
     * Cria uma variável para armazenar o cookie e realiza a verificação
     * se existem cookies criados
     */
     
    String cookieNome = "nomeUsuario";
    Cookie cookies[] = request.getCookies();
    Cookie exemploCookieNome = null;
    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals(cookieNome)) {
                exemploCookieNome = cookies[i];
                break;
            }
        }
    }
    
%> 

<%@page language="java"%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            // se o cookie for nulo, mostra o formulário para preenchimento
            if (exemploCookieNome == null) {
        %>
        <form method="post" action="registrar.jsp"> 
            <p> <b> Digite seu nome: </b> <input type="text" name="nome"> </p>
            <br> 
            <input type="submit" value="Enviar Dados" /> 
        </form> 
        <%
            } else {
                // se houver um cookie criado, mostra o seu valor
                out.println("Olá, " + exemploCookieNome.getValue());
            }
        %> 
        <hr>
    </body>
</html>

