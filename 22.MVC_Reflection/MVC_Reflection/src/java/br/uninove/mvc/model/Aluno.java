/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.uninove.mvc.model;

import java.io.Serializable;
 
/**
 * JavaBean do alunos
 */
public class Aluno implements Serializable {
 
    private int id;
    private String ra;
    private String nome;
    private String curso;
 
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    public Aluno() {
    }
 
    public String getRa() {
        return ra;
    }
 
    public void setRa(String ra) {
        this.ra = ra;
    }
 
    public String getNome() {
        return nome;
    }
 
    public void setNome(String nome) {
        this.nome = nome;
    }
 
    public String getCurso() {
        return curso;
    }
 
    public void setCurso(String curso) {
        this.curso = curso;
    }
 
}
