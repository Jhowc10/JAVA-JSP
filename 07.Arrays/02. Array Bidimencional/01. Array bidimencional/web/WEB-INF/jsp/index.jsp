<%
    /**
     * Declaração de uma variável para pular linha <br>
     * 
    */
    String quebra = "<br>";
 
    /**
     * Declaração de constantes para controlar a linha e a coluna, pois o array
     * não contém o mesmo tamanho de linhas e colunas.
     * 
    */
    final int LINHAS  = 5;
    final int COLUNAS = 2;
    
    /**
     * Declarando um array e String com 5 posições (lembre-se, inicia em 0)
     * 
    */
    String nomes[][] = new String[LINHAS][COLUNAS];
    
    /**
     * Atribuindo valores ao array
     * 
    */
    nomes[0][0] = "João";
    nomes[0][1] = "11 9.9154-8978";
    
    nomes[1][0] = "Maria";
    nomes[1][1] = "11 9.9124-8978";

    nomes[2][0] = "Paulo";
    nomes[2][1] = "11 9.8154-1278";
    
    nomes[3][0] = "Ana";
    nomes[3][1] = "11 9.6771-1155";

    nomes[4][0] = "Edson";
    nomes[4][1] = "11 9.7421-3355";
    
    /**
     * Acessando todos os elementos utilizando seus índices
     * 
    */
    out.print(nomes[2][0] + " " + nomes[2][1] + quebra);
    out.print(nomes[1][0] + " " + nomes[1][1] + quebra);
    out.print(nomes[4][0] + " " + nomes[4][1] + quebra);
    
    out.print(quebra + quebra);
    
    /**
     * Acessando TODOS os elementos array com laços de repetição for
     * 
    */
    for(int linha = 0; linha < LINHAS; linha++){
        for(int coluna = 0; coluna < COLUNAS; coluna++){
            out.print(nomes[linha][coluna] + " ");
        }
    }
    
    // Quebra a linha apenas depois de recuperar as duas colunas
    out.print(quebra);
%>
    
