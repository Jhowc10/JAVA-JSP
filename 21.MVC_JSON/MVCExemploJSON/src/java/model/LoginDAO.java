/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import beans.Pessoa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.ConnectionFactory;
 
/**
 * 
 * @author Edson Melo de Souza (prof.edson.melo@gmail.com)
 * @since 28/10/2016, 10:30:16
 * @version 1.0
 */
public class LoginDAO {
   private Connection conexao = null;
 
    public LoginDAO() throws SQLException {
        // retorna a conexao no momento da chamada da classe
        this.conexao = ConnectionFactory.getInstance().getConnection();
    }
 
    public List<Pessoa> Login(Pessoa login) {
        String sql = "SELECT * FROM pessoa "
                + "WHERE "
                + "usuario = ? and senha = ?";
 
        String status = "";
 
        try {
            PreparedStatement ps = conexao.prepareStatement(sql);
            ps.setString(1, login.getUsuario());
            ps.setString(2, login.getSenha());
 
            ResultSet rs = ps.executeQuery();
            
            // Lista para armazenar os dados do cliente
            List<Pessoa> pessoa = new ArrayList<>();
            
            if (rs.next()) {
                Pessoa p = new Pessoa();
                p.setId(rs.getInt("id"));
                p.setNome(rs.getString("nome"));
                p.setTelefone(rs.getString("telefone"));
                pessoa.add(p);
            }
 
            return pessoa;
 
        } catch (SQLException ex) {
            throw new RuntimeException("Falha ao efetuar o login", ex);
        }
    }
}
