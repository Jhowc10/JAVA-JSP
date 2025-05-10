<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculadora</title>
    </head>
    <body>
        <h1>M�quina de Calcular</h1>
 
        <form name="frmCalculadora" action="calcula.jsp" method="post">
            <input type="text" name="valor1" placeholder="N�mero 1"/>
            <select name="operacao">
                <option value="+">Adi��o</option>
                <option value="-">Subtra��o</option>
                <option value="*">Multiplica��o</option>
                <option value="/">Divis�o</option>
            </select>
            <input type="text" name="valor2" placeholder="N�mero 2"/>
            <input type="submit" name="enviar" value="Calcular" />
            &nbsp;&nbsp;<span>${param.erro}</span>
        </form>
        <p>Lista de C�lculos<br><br>
            <%
 
                // Verifica se a session existe (eh diferente de null)
                // Se existir ....
                if (session.getAttribute("memoria") != null) {
 
                    // Cria uma variavel e armazena o valor contido na session
                    Double memoria
                            = Double.valueOf(session.getAttribute("memoria").toString());
 
                    // Mostra no navegador os valores armazenados (sequencia de calculos) 
                    // na session
                    out.print(session.getAttribute("calculos"));
 
                    // Mostra o VALOR armazenado na memoria (acumulado)
                    out.print("<br><br>Total na mem�ria: " + memoria);
                }
            %>
        </p>
        <form name="limpaMemoria" action="limpaMemoria.jsp" method="post">
            <input type="submit" value="Limpar Mem�ria">
        </form>
</html>