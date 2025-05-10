<%
    // Redirecionamento para a view default
    response.setContentType("text/html;charset=iso-8859-1");
    RequestDispatcher view = request.getRequestDispatcher("views/default.jsp");
    view.forward(request, response);
%>
