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
     * Acessando TODOS os elementos array com o laços de repetição for, mas
     * agora vamos pegar o tamanho automaticamente
     */
    for (int i = 0; i < nomes.length; i++) {
        out.print(nomes[i] + quebra);
    }
%>
