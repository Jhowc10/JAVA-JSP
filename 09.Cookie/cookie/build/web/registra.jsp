<%-- 
    Document   : registra
    Created on : 27 de abr. de 2025, 12:00:20
    Author     : tatia
--%>

<%@page language = "java" import = "java.util.*"%> 
<%
    /**
     * Cria uma vari�vel para armazenar o cookie e realiza a verifica��o se
     * existem cookies criados
     */
    String cooNome = "nomeUsuario";
    Cookie cookies[] = request.getCookies();
    Cookie exemploCookieNome = null;
    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals(cooNome)) {
                exemploCookieNome = cookies[i];
                break;
            }
        }
    }
 
    // vari�vel para recuperar o nme do formul�rio preenchido
    String nome = "";
    if (exemploCookieNome == null) {
 
        if (nome == null) {
            nome = "";
        } else {
            // cria o cookie
            Cookie meuCookie = new Cookie("nomeUsuario", request.getParameter("nome"));
            // tempo de validade de 10 segundos
            meuCookie.setMaxAge(10);
            response.addCookie(meuCookie);
        }
    }
    // redireciona para a p�gina inicial
    response.sendRedirect("index.jsp");
%> 
