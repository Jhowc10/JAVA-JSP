<!-- -Indica a página que deverá mostrar um erro, caso ele ocorra ->
<%@ page errorPage="mostraErro.jsp" %>
<html>
    <head>
        <title>Exemplo de Exception no JSP</title>
    </head>
    <body>
        <%
            // Lançamento de uma nova exception
            int x = 1;
            if (x == 1) {
               // lança uma nova exception
                throw new RuntimeException("Ops... ocorreu um erro!");
            }
        %>
    </body>
</html>
