/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.uninove.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 
/**
 * @file ConnectionFactory.java
 * @brief Classe Fabrica de Conexoes
 * @author EDSON MELO DE SOUZA
 */
public class ConnectionFactory {
 
    // Variaveis da conexao
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String host = "localhost:3306";
    private static final String database = "exemplo_mvc_reflection";
    private static final String usuario = "root";
    private static final String senha = "";
 
    /**
     * metodo que retorna uma conexao
     *
     * @return conexao
     */
    public static Connection getConnection() {
        try {
 
            // carrega o driver correspondente da conexao
            Class.forName(driver);
 
            // efetua a conexao com o banco de dados
            Connection conexao = DriverManager.getConnection("jdbc:mysql://"
                    + host + "/" + database, usuario, senha);
 
            // retorna uma conexao
            return conexao;
 
        } catch (SQLException e) {
            throw new RuntimeException("Erro ao abrir a conexão: " + e);
 
        } catch (ClassNotFoundException ex) {
            throw new RuntimeException("Driver não localizado: " + ex);
        }
    }
}
