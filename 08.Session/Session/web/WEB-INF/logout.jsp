<%-- 
    Document   : logout
    Created on : 27 de abr. de 2025, 10:35:10
    Author     : tatia
--%>

<%
    session.setAttribute("usuario", null);
    session.invalidate();
    
    response.sendRedirect("index.html");
%>