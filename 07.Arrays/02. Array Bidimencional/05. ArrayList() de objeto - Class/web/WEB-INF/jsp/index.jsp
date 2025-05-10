<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%!
    /**
     * Declaração da classe Aluno dentro do JSP
     */
    public class Aluno {
 
        private int codigo;
        private String nome;
 
        public void setCodigo(int codigo) {
            this.codigo = codigo;
        }
 
        public int getCodigo() {
            return codigo;
        }
 
        public void setNome(String nome) {
            this.nome = nome;
        }
 
        public String getNome() {
            return nome;
        }
    }
%>
<%
    // Declaração da lista do tipo Aluno
    List<Aluno> listaAluno = new ArrayList();
 
    // Criação do objeto aluno
    Aluno aluno;
 
    // Cria o aluno 1 e adiciona na lista
    aluno = new Aluno();
    aluno.setNome("Edson");
    listaAluno.add(aluno);
 
    // Cria o aluno 2 e adiciona na lista
    aluno = new Aluno();
    aluno.setNome("Maria");
    listaAluno.add(aluno);
 
    // Cria o aluno 3 e adiciona na lista
    aluno = new Aluno();
    aluno.setNome("Paula");
    listaAluno.add(aluno);
 
    /**
     * Mostrando os elementos no navegador antes de remover um elemento Neste
     * caso está endo utilizado o métod getNome() do objeto aluno
     */
    out.print("Elementos na lista<br>");
    for (Aluno valor : listaAluno) {
        out.print(valor.getNome() + "<br>");
    }
 
    out.print("<br>Procurando e removendo o nome \"Edson\"<br>");
 
    // Objeto que recebe o valor procurado
    Aluno alunoProcurado = new Aluno();
    alunoProcurado.setNome("Paula");
 
    /**
     * Realiza uma busca do valor informado
     *
     */
    for (int i = 0; i < listaAluno.size(); i++) {
        String tmpNome = listaAluno.get(i).getNome();
        if (tmpNome.equals(alunoProcurado.getNome())) {
            listaAluno.remove(i);
        }
    }
 
    out.print("<br>Lista com o objeto removido<br>");
    for (Aluno valor : listaAluno) {
        out.print(valor.getNome() + "<br>");
    }
%>
