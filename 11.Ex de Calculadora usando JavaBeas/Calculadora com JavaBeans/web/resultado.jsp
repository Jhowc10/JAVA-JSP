<%-- 
    Document   : resultado
    Created on : 2 de mai. de 2025, 09:40:31
    Author     : jhow
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado do Cálculo</title>
    </head>
    <body>
        <%
            // Verifica se foi selecionada a operação de divisão E testa se o valor é diferente do 0 ou vazio
            if((request.getParameter("form_valor_2").equals("0") ||
                request.getParameter("form_valor_2").equals("")) && 
                Integer.valueOf(request.getParameter("operacao")) == 4){
                    out.print("O [Valor 2] deve ser diferente de ZERO!<br><br>");
            
            }else{
        %>
          
            <!-- Configura a classe Cálculos como um JavaBeans -->
            <jsp:useBean id="objCalculadora" class="bean.Calculos">
                
                <!-- Configura os sets -->
                <jsp:setProperty name    ="objCalculadora"
                                 property="valor_1       "
                                 param   ="form_valor_1  "
                />
                
                <jsp:setProperty name    ="objCalculadora"
                                 property="valor_2       "
                                 param   ="form_valor_2  "
                />
                
                <jsp:setProperty name    ="objCalculadora"
                                 property="tipoOperacao  "
                                 param   ="operacao      "
                />
                
                <jsp:setProperty name    ="objCalculadora"
                                 property="resultado     "
                                 value   ="0             "
                />
            </jsp:useBean>
                
            <!-- Recupera o valor calculado no JavaBeans -->
            Resultado:<jsp:getProperty name="objCalculadora" property="resultado"/>
            
            <br><br>
            
            <!-- Fecha a condição do valor 2 -->
            <% } %>
            
            <a href="index.jsp">Voltar</a>
    </body>
</html>
