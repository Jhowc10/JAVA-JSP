<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %> 
<%@include file="/includes/header.jsp"%>
 
<h1>Alteração de Cadastro</h1>
 
<form method ="post" action="Controle">
    <input type="hidden" name="controller" value="ControleAluno">
    <c:forEach var="aluno" items="${alunos}">
        <table>
            <tr>
                <td>R.A: </td>
                <td>${aluno.ra}</td>
            </tr>
            <tr>
                <td>Nome: </td>
                <td><input type="text" name="nome" value="${aluno.nome}"></td>
            </tr>
            <tr>
                <td>Curso: </td>
                <td><input type="text" name="curso" value="${aluno.curso}"></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <input type="hidden" name="ra" value="${aluno.ra}">
                    <input class="button" type="submit" name="metodo" value="Salvar">
                    <input class="button" type="button" onclick="history.go(-1);" value="Voltar">
                </td>
            </tr>
        </table>
    </c:forEach>
</form>
<%@include file="/includes/footer.jsp"%>
