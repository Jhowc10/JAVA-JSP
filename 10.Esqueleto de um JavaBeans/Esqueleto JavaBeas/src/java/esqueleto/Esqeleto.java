/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package esqueleto;

import java.io.Serializable;

public class Esqeleto implements Serializable{
    
    // Atributos da classe
    private String atributo1;
    private String atributo2;
    
    // Construtor vazio
    public Esqeleto(){}
    
    // Métodos getters e setters
    public String getAtributo1(){
        return atributo1;
    }
    
    public void setAtributo1(String atributo1){
      this.atributo1 = atributo1;
    }
    
    public String getAtributo2(){
        return atributo2;
    }
    
    public void setAtributo2(String atributo2){
        this.atributo2 = atributo2;
    }
}
