<%
    /**
     * Declaração de uma variável para pular linha <br>
     */
    String quebra = "<br>";
 
    /**
     * Declarando um arrays de Strings com 5 posições (lembre-se, inicia em 0)
     */
    String nomes[] = new String[5];
 
    /**
     * Atribuindo valores ao array
     */
    nomes[0] = "João";
    nomes[1] = "Maria";
    nomes[2] = "Paulo";
    nomes[3] = "Ana";
    nomes[4] = "Edson";
    
    out.print("Tamanho do array nomes[]: " + nomes.length + quebra + quebra);
    /**
     * Acessando TODOS os elementos array com o laços de repetição for each
     * Este laço percorre TODO o array, não necessitando informar seu tamanho
     */
    for (String nome : nomes) {
        out.print(nome + quebra);
    }
    
    // A estrutura utilizada no exemplo funciona da seguinte forma:

    // for (tipo_do_dado   variável_que_receberá_o_dado : array_contendo_os_valores) {
        //out.print(variável_que_receberá_o_dado);
    //}
%>
