<%-- 
    Document   : login
    Created on : 27 de abr. de 2025, 10:34:39
    Author     : tatia
--%>

<%@page errorPage="mensagem.jsp" %>

<%
    if(session.getAttribute("usuario") != null){
        throw new RuntimeException("logado");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session - Login</title>
    </head>
    
    <body>
        <h1>Session - Login</h1>
        
        <a href="index.html">Principal</a>
        
        <p>Informe os dados de acesso</p>
        
        <form name="frmlogin" action="verifica.jsp" method="POST">
            Usuario: <input type="text"     name="usuario"><br>
            Senha  : <input type="password" name="senha"  ><br>
            
            <input type="submit" name="bt_login" value="Prosseguir">
            <input type="hidden" name="acao"     value="login"     >
        </form>
    </body>
</html>
