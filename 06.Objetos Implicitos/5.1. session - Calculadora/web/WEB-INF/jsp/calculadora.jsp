<%! // Método que verifica se o valor digitado é um número inteiro
    public static boolean isNumeric(String s) {
        try {
            Integer.parseInt(s);
            return true;
        } catch (NumberFormatException ex) {
            return false;
        }
    }
%>
<%
    try {
        // Variaveis para PEGAR os valores enviados
        String strValor1 = request.getParameter("valor1");
        String strValor2 = request.getParameter("valor2");
        String operador = request.getParameter("operacao");
 
        // Verifica se os valores são numéricos (válidos: inteiros)
        if (!isNumeric(strValor1) || !isNumeric(strValor2)) {
            response.sendRedirect("index.jsp?erro=Valores incorretos!");
        }
 
        // Variaveis para manipular os valores recebidos
        Double resultado = 0.0;
        Double valor1 = Double.valueOf(strValor1).doubleValue();
        Double valor2 = Double.valueOf(strValor2).doubleValue();
 
        // Efetua as comparacoes para realizar a operacao
        if ("+".equals(operador)) {
            resultado = valor1 + valor2;
        } else if ("-".equals(operador)) {
            resultado = valor1 - valor2;
        } else if ("*".equals(operador)) {
            resultado = valor1 * valor2;
        } else if ("/".equals(operador)) {
            resultado = valor1 / valor2;
        }
 
        // Verifica a existencia da session memoria. Se existir, realiza as operacoes
        if (session.getAttribute("memoria") != null) {
 
            // Atribui o valor contino na session (memoria)
            Double memoria = Double.valueOf(session.getAttribute("memoria").toString());
 
            // Atribui o resultado do calculo efetuado (solicitado)
            Double calculo = (Double) (resultado + memoria);
 
            // Atribui o resultado do calculo a session memoria, 
            // que será utilizada na index.jsp
            session.setAttribute("memoria", calculo);
 
            // Recupera a lista de calculos efetuados anteriormente
            String status = (String) session.getAttribute("calculos");
 
            // Atribui os calculos realizados anteriormente e inclui o calculo atual para 
            // apresentar na index.jsp
            session.setAttribute("calculos", status + "(" + valor1 + " " + operador + " "
                    + valor2 + ")" + " = " + resultado + "<br>");
        } else {
 
            // Cria a lista de calculos com o primeiro calculo, ja que nao 
            // existia nenhum na lista
            session.setAttribute("calculos", "(" + valor1 + " " + operador + " "
                    + valor2 + ")" + " = " + resultado + "<br>");
 
            // Cria asession para acumular os resultados
            session.setAttribute("memoria", resultado);
        }
 
        // Apos efetuar as operacoes, redireciona para a index.jsp, permitindo 
        // realizar novo calculo
        //response.sendRedirect("index.jsp");
    } catch (Exception e) {
    }
%>
