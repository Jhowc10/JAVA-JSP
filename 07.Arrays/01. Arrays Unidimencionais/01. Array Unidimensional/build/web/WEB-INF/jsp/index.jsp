<%
    /**
     * Declara��o de uma vari�vel para pular linha
     * 
    */
    String quebra = "<br>";
    
    /**
     * Declarando um array de Strings com 5 posi��es (lembre-se, inicia em 0)
     * 
    */
    String nomes[] = new String[5];
    
    /**
     * Atribuindo valores ao array
     * 
    */
    nomes[0] = "Jo�o" ;
    nomes[1] = "Maria";
    nomes[2] = "Paulo";
    nomes[3] = "Ana"  ;
    nomes[4] = "Edson";
    
    /**
     * Acessando os elementos utilizando seus �ndices
     * 
    */
    out.print(nomes[2] + quebra);
    out.print(nomes[0] + quebra);
    out.print(nomes[4] + quebra);
    
    out.print(quebra + quebra);
    
    /**
     * Acessando TODOS os elementos array com o la�o de repeti��o for
     * 
    */
    for(int i = 0; i < 5; i++){
        out.print(nomes[i] + quebra);
    }
%>
