<%-- 
    Document   : index
    Created on : 2 de mai. de 2025, 09:18:48
    Author     : jhow
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora JavaBeans</title>
        
        <style type="text/css">
            label{
                text-align  : right;
                font-weight : bold ;
                display     : block;
                float       : left ; 
                width       : 120px;
                font-size   : 15px ;
                line-height : 25px ;
                margin-left : 10px ;
                margin-right: 15px ;
            }
        </style>
    </head>
    
    <body>
        <h1>Calculadora JavaBeans</h1>
        
        <form name="calculadora_beans" action="resultado.jsp" method="post">
            <label>Digite o valor 1:</label>
            <input type="text" name="form_valor_1"/>
            
            <br><br>
            
            <label>Digite o valor 2:</label>
            <input type="text" name="form_valor_">
            
            <br><br>
            
            <label>Operação:</label>
            <select name="operacao">
                <option value="1">Soma         </option>
                <option value="2">Subtração    </option>
                <option value="3">Multoplicação</option>
                <option value="4">Divisão      </option>
            </select>
            
            <br><br>
            
            <label>&nbsp;</label>
            <input type="submit" value="Calcular"/>
        </form>
    </body>
</html>
