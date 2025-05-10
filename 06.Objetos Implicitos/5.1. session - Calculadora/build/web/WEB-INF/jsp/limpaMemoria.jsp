<%
    // Atribui o valor NULL as sessions existentes
    session.setAttribute("memoria", null);
    session.setAttribute("calculos", null);
    
    // Invalida as sessions existentes
    session.invalidate();
    
    // Redireciona para a index.jsp
    response.sendRedirect("index.jsp");
%>