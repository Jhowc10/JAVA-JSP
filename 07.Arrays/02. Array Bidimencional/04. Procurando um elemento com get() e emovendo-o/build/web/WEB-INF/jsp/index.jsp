<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%
    // Declaração da lista do tipo ArrayList
    List<String> nomes = new ArrayList();
 
    /**
     * Adicionando elementos (valores) na lista Para adicionar um elemento na
     * lista usamos o método objeto.add(valor)
     */
    nomes.add("Edson");
    nomes.add("Maria");
    nomes.add("Pedro");
    nomes.add("Paula");
 
    // Mostrando os elementos no navegador antes de remover um elemento
    out.print("Elementos na lista<br>");
    for (String valor : nomes) {
        out.print(valor + "<br>");
    }
 
    out.print("<br>Procurando e removendo o nome \"Edson\"");
 
    // Variável para receber o nome a ser pesquidado
    String nomeProcurado = "Edson";
 
    /**
     * Realiza uma busca de um valor informado pelo índice utilizando o método
     * get() do objeto nomes
     *
     */
    for (int i = 0; i < nomes.size(); i++) {
        String tmpNome = nomes.get(i);
        if (tmpNome.equals(nomeProcurado)) {
            nomes.remove(i);
        }
    }
 
    out.print("<br><br>Mostra os elementos que ficaram na lista<br>");
    // Mostrando os elementos no navegador
    for (String valor : nomes) {
        out.print(valor + "<br>");
    }
    
    out.print("<br>Limpando a lista<br>");
    nomes.clear();
    
    out.print("<br><br>Mostra a lista vazia (nada a mostrar)<br>");
    // Mostrando os elementos no navegador
    for (String valor : nomes) {
        out.print(valor + "<br>");
    }
%>
