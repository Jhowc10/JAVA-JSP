<%
    /**
     * Declara��o de uma vari�vel para pular linha <br>
     */
    String quebra = "<br>";
 
    /**
     * Declarando um arrays de Strings com 5 posi��es (lembre-se, inicia em 0)
     */
    String nomes[] = new String[5];
 
    /**
     * Atribuindo valores ao array
     */
    nomes[0] = "Jo�o";
    nomes[1] = "Maria";
    nomes[2] = "Paulo";
    nomes[3] = "Ana";
    nomes[4] = "Edson";
    
    out.print("Tamanho do array nomes[]: " + nomes.length + quebra + quebra);
    /**
     * Acessando TODOS os elementos array com o la�os de repeti��o for each
     * Este la�o percorre TODO o array, n�o necessitando informar seu tamanho
     */
    for (String nome : nomes) {
        out.print(nome + quebra);
    }
    
    // A estrutura utilizada no exemplo funciona da seguinte forma:

    // for (tipo_do_dado   vari�vel_que_receber�_o_dado : array_contendo_os_valores) {
        //out.print(vari�vel_que_receber�_o_dado);
    //}
%>
