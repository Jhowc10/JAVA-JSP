<%@ page import="java.io.*,java.util.*" %>
<html>
    <head>
        <title>Exemplo de refresh (atualiza��o) da p�gina utilizando o objeto response</title>
    </head>
    <body>
    <center>
        <h2>
            Exemplo de refresh (atualiza��o) da p�gina utilizando o objeto response
        </h2>
        <%
            // Determina o tempo (em segundos) e o que deve ser realizado no cliente
            response.setIntHeader("Refresh", 5);
            
            // Recupera dados sobre a hora atual
            Calendar calendar = new GregorianCalendar();
            String status;
            
            // extrai os dados do hor�rio
            int hora = calendar.get(Calendar.HOUR);
            int minuto = calendar.get(Calendar.MINUTE);
            int segundo = calendar.get(Calendar.SECOND);
            
            // verifica o per�odo
            if (calendar.get(Calendar.AM_PM) == 0) {
                status = "AM";
            } else {
                status = "PM";
            }
            
            // concatena os valores e apresenta
            String horaAtual = hora + ":" + minuto + ":" + segundo + " " + status;
            out.println("Hora atual: " + horaAtual + "\n");
        %>
    </center>
</body>
</html>
