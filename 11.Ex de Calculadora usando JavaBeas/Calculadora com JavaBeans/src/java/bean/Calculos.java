/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bean;
 
import java.io.Serializable;
 
public class Calculos implements Serializable {
 
    //Declaração dos atributos
    float valor_1;
    float valor_2;
    float resultado;
    
    int tipoOperacao;
 
    /**
     * Declaração dos métodos da classe
     * 
    */
    // Metodo construtor
    public Calculos() {
    }
 
    // Método que retorna o resultado calculado
    public float getResultado() {
        return resultado;
    }
 
    // Método que recebe o tipo de operação e efetua os cálculos
    public void setResultado(float resultado) {
        float retorno = resultado;
 
        //Adição
        if (tipoOperacao == 1) {
            retorno = valor_1 + valor_2;
        }
 
        //Subtração
        if (tipoOperacao == 2) {
            retorno = valor_1 - valor_2;
        }
 
        //Multiplicação
        if (tipoOperacao == 3) {
            retorno = valor_1 * valor_2;
        }
 
        //Divisão
        if (tipoOperacao == 4) {
            retorno = valor_1 / valor_2;
        }
 
        /**
         * Atribui o valor calculado ao atributo [resultado] que será enviado
         * para a página resultado.jsp, conforme a linha abaixo:
         * <jsp:getProperty name="objCalculadora" property="resultado"/><br><br>
         * 
         */
        this.resultado = retorno;
    }
 
    // Método que recebe o tipo da operação
    public void setTipoOperacao(int tipoOperacao) {
        this.tipoOperacao = tipoOperacao;
    }
 
    // Método que recebe o valor_1 informado
    public void setValor_1(float valor_1) {
        this.valor_1 = valor_1;
    }
 
    // Método que recebe o valor_2 informado
    public void setValor_2(float valor_2) {
        this.valor_2 = valor_2;
    }
}