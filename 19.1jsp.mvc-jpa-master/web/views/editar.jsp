<!-- Indica que será utilizada a biblioteca JSTL -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Configura o código de página para a aplicação -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Controle de Alunos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Referência para utilização do arquivo CSS -->
        <link rel="stylesheet" type="text/css" href="views/css/estilo.css">
    </head>
    <body>
        <h1>Cadastro de Aluno</h1><br>

        <!--
            Cria um formulário para receber os dados originados do Servlet Controle.
            Preste atenção que o destino dos dados são o próprio Servlet Controle.
            Conforme o laço é percorrido, os dados são atribuídos aos campos relativos.
            Ao final das alterações, os dados serão enviados novamente para o Controle
            que enviará para o DAO realizar a alteração no registro.
        -->
        <form name="cadastro" action="Controle" method="post">

            <!-- 
                Utiliza a JSTL para percorrer a lista com o registro retornado e atribui 
                os valores de cada atributo do objeto para um campo do formulário.
            -->
            <c:forEach var="aluno" items="${listaAlunos}">
                <label>RA:</label>${aluno.ra}<br>
                <label>Nome:</label><input type="text" name="nomeAluno" class="input" value="${aluno.nome}"><br>
                <label>Curso:</label><input type="text" name="cursoAluno" class="input"  value="${aluno.curso}"><br>
                <label>Disciplina:</label><input type="text" name="disciplinaAluno" class="input"  value="${aluno.disciplina}"><br>
                <label>E-mail:</label><input type="text" name="emailAluno" class="input"  value="${aluno.email}"><br>
                <label>&nbsp;</label><input type="submit" name="btSalvar" value="Salvar" class="botao">

                <!-- Cria dois campos ocultos para a flag do Controle e o id do aluno--> 
                <input type="hidden" name="flag" value="salvar">
                <input type="hidden" name="id" value="${aluno.id}">
            </c:forEach>
            <input type="button" name="btVoltar" onclick="history.go(-1);" value="Voltar" class="botao">
        </form>
    </body>
</html>
