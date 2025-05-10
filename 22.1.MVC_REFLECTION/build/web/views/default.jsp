<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %> 

<%@include file="/includes/header.jsp"%>

<h1>Controle de Alunos</h1>
<form method ="post" action="Controle">
    <input type="hidden" name="controller" value="ControleAluno">
    <table>
        <tr>
            <td>R.A: </td>
            <td><input type="text" name="ra"></td>
        </tr>
        <tr>
            <td>Nome: </td>
            <td><input type="text" name="nome"></td>
        </tr>
        <tr>
            <td>Curso: </td>
            <td><input type="text" name="curso"></td>
        </tr>
        <tr>
            <td></td>
            <td class="mensagem" colspan="2">
                <c:if test="${not empty mensagem}">
                    <c:out value="${mensagem}"></c:out>
                </c:if>                    
            </td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2">
                <input class="button" type="submit" name="metodo" value="Pesquisar">
                <input class="button" type="submit" name="metodo" value="Listar">
                <input class="button" type="submit" name="metodo" value="Limpar">
                <input class="button" type="submit" name="metodo" value="Inserir">
            </td>
        </tr>
    </table>
</form>
<c:if test="${not empty alunos}">
    <table class="comBordaSimples">
        <tr>
            <th>RA</th>
            <th>Nome</th>
            <th>Curso</th>
        </tr>

        <c:forEach var="aluno" items="${alunos}">
            <tr>
                <td><c:out value="${aluno.ra}"/></td>
                <td><c:out value="${aluno.nome}"/></td>
                <td><c:out value="${aluno.curso}"/></td>
                <td><a href="Controle?controller=ControleAluno&metodo=Editar&ra=${aluno.ra}">Editar</a></td>
                <td><a href="Controle?controller=ControleAluno&metodo=Excluir&ra=${aluno.ra}">Excluir</a></td>
            </tr>
        </c:forEach>        
    </table>
</c:if>
<%@include file="/includes/footer.jsp"%>
