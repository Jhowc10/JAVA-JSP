<%
    /**
     * Declara��o de uma vari�vel para pular linha <br>
     */
    String quebra = "<br>";
 
    /**
     * Declara��o de constantes para controlar a linha e a coluna, pois o array
     * n�o cont�m o mesmo tamanho de linhas e colunas.
     */
    final int LINHAS = 5;
    final int COLUNAS = 2;
 
    /**
     * Declarando um arrays de Strings com 5 posi��es (lembre-se, inicia em 0)
     */
    String nomes[][] = new String[LINHAS][COLUNAS];
 
    /**
     * Atribuindo valores ao array
     */
    nomes[0][0] = "Jo�o";
    nomes[0][1] = "11 9.9124-5555";
 
    nomes[1][0] = "Maria";
    nomes[1][1] = "11 9.9124-8978";
 
    nomes[2][0] = "Paulo";
    nomes[2][1] = "11 9.8154-1278";
 
    nomes[3][0] = "Ana";
    nomes[3][1] = "11 9.6771-1155";
 
    nomes[4][0] = "Edson";
    nomes[4][1] = "11 9.7421-3355";
 
    /**
     * Acessando TODOS os elementos array com o la�os de repeti��o for each
     * Este la�o percorre TODO o array, n�o necessitando informar seu tamanho
     */
    for (String[] nome : nomes) {
        out.print(nome[0] + " " + nome[1] + quebra);
    }
%>
