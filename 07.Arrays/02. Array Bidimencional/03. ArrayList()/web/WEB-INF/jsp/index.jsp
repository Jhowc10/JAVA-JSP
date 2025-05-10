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
 
    // Mostrando os elementos no navegador
    for (String valor : nomes) {
        out.print(valor + "<br>");
    }
%>
