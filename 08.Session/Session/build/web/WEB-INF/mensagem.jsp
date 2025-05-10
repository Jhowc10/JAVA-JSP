<%-- 
    Document   : mensagem
    Created on : 27 de abr. de 2025, 10:35:26
    Author     : tatia
--%>

<%@page isErrorPage="true"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Erro</title>
    </head>
    
    <body>
        <h1>Atenção!</h1>
        <%
            try{
                if(exception.getMessage().equals("logado")){
                    out.print("<p>Olá, você já está logado no sistema     </p><br>");
                    out.print("<a href=\"restrita1.jsp\">Página restrita 1</a><br>");
                    out.print("<a href=\"restrita2.jsp\">Página restrita 2</a><br>");
                    out.print("<a href=\"logout.jsp\"   >Logout           </a>"    );
                    
                }else{
                    out.print(exception.getMessage());
                    out.print("<a href=\"login.jsp\">Login</a>");
                
                }
                
            }catch(Exception e){}
        %>
    </body>
</html>
