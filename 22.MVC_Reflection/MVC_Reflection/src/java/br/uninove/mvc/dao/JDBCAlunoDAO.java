/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.uninove.mvc.dao;

import br.uninove.mvc.model.Aluno;
import br.uninove.utils.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
 
/**
 *
 * Classe do Model para o Aluno
 */
public class JDBCAlunoDAO implements AlunoDAO {
 
    Connection connection;
    String status;
 
    public JDBCAlunoDAO() {
        // variável que recebe a conexão da fábrica
        connection = ConnectionFactory.getConnection();
    }
 
    @Override
    @SuppressWarnings("empty-statement")
    public void Inserir(Aluno aluno) {
        try {
            String sql = "insert INTO aluno (ra, nome, curso) VALUES (?,?,?)";
            // seta os valores
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                // seta os valores
                ps.setString(1, aluno.getRa());
                ps.setString(2, aluno.getNome());
                ps.setString(3, aluno.getCurso());
 
                // executa o sql (execute) (quando necessita retorno em um resultSet)
                ps.executeUpdate();
 
                // fecha o statement
                ps.close();
            }
 
            //fecha a conexão
            connection.close();
 
            // retorna o status da inserção
            status = "Inserido com Sucesso!";
 
        } catch (SQLException ex) {
            throw new RuntimeException("Erro ao inserir aluno", ex);
        }
    }
 
    @Override
    public void Editar(Aluno aluno) {
        String sql = "UPDATE aluno SET nome=?, curso=? WHERE ra=?";
        try {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, aluno.getNome());
                ps.setString(2, aluno.getCurso());
                ps.setString(3, aluno.getRa());
 
                ps.executeUpdate();
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(JDBCAlunoDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException(
                    "Erro ao atualizar aluno");
        }
 
    }
 
    /**
     *
     * @param aluno
     */
    @Override
    public void Salvar(Aluno aluno) {
        String sql = "UPDATE aluno SET ra=?, nome=?, curso=? WHERE id = ?";
        try {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, aluno.getRa());
                ps.setString(2, aluno.getNome());
                ps.setString(3, aluno.getCurso());
                ps.setInt(4, aluno.getId());
 
                ps.executeUpdate();
            }
 
        } catch (SQLException ex) {
            Logger.getLogger(JDBCAlunoDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException(
                    "Erro ao atualizar aluno");
        }
    }
 
    @Override
    public void Excluir(Aluno aluno) {
        String sql = "DELETE FROM aluno WHERE ra = ?";
        try {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, aluno.getRa());
                ps.executeUpdate();
            }
 
        } catch (SQLException ex) {
            Logger.getLogger(JDBCAlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro ao remover o aluno", ex);
        }
    }
 
    @Override
    public List<Aluno> Pesquisar(Aluno aluno) {
        List<Aluno> alunos = new ArrayList<>();
        String sql = "SELECT * FROM aluno WHERE ra like ? or nome like ? or curso like ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, aluno.getRa());
            ps.setString(2, aluno.getNome());
            ps.setString(3, aluno.getCurso());
 
            ResultSet rs = ps.executeQuery();
 
            while (rs.next()) {
                aluno = new Aluno();
                aluno.setId(rs.getInt("id"));
                aluno.setRa(rs.getString("ra"));
                aluno.setNome(rs.getString("nome"));
                aluno.setCurso(rs.getString("curso"));
                alunos.add(aluno);
            }
            return alunos;
 
        } catch (SQLException ex) {
            Logger.getLogger(JDBCAlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha ao listar os alunos em JDBCAluno", ex);
        }
    }
 
    @Override
    public List<Aluno> Listar() {
        List<Aluno> alunos = new ArrayList<>();
        try {
            String sql = "SELECT * FROM aluno";
            try (PreparedStatement ps = connection.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
 
                while (rs.next()) {
                    Aluno aluno = new Aluno();
                    aluno.setId(rs.getInt("id"));
                    aluno.setRa(rs.getString("ra"));
                    aluno.setNome(rs.getString("nome"));
                    aluno.setCurso(rs.getString("curso"));
                    alunos.add(aluno);
                }
            }
            return alunos;
 
        } catch (SQLException ex) {
            Logger.getLogger(JDBCAlunoDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Falha ao listar os alunos em JDBCAluno", ex);
        }
    }
 
    @Override
    public String toString() {
        return status;
    }
 
}
