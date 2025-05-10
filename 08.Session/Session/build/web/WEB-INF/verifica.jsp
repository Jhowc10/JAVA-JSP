<%-- 
    Document   : verifica
    Created on : 27 de abr. de 2025, 10:37:14
    Author     : tatia
--%>

<%@page errorPage="mensagem.jsp" %>

<%
    if(request.getAttribute("acao").equals("login")){
        String usuario = request.getParameter("usuario");
        String senha   = request.getParameter("senha"  );
        
        if(usuario.equals("") || senha.equals("")){
            throw new RuntimeException("Favor preencher os dados para acesso.<br>");
        }
        
        if(!usuario.equals("admin") || !senha.equals("123")){
            throw new RuntimeException("Dados incorretos!<br>");
            
        }else{
            session.setAttribute("usuario", usuario);
            response.sendRedirect("restrital1.jsp" );
        }
        
    }else{
        response.sendRedirect(request.getParameter("pagina"));
    }
%>


