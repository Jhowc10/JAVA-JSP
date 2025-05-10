/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.util.Calendar;
import java.util.Random;
 
public class GeraRa {
 
    private final String ra;
 
    //instância um objeto da classe Random usando o construtor básico
    public GeraRa() {
        // Cria um objeto para gerar os número randômicos
        Random gerador = new Random();
 
        // Cria a variável para armazenar o RA criado
        String retorno = "";
 
        //Concatena os números aleatórios entre 1 e 9
        for (int i = 1; i < 6; i++) {
            retorno += String.valueOf(gerador.nextInt(10));
        }
        this.ra = String.valueOf(Calendar.getInstance().get(Calendar.YEAR)) + retorno;
    }
 
    public String getRa() {
        return ra;
    }
 
}
