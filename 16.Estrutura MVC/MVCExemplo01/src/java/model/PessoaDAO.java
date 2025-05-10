/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author tatia
 */
import bean.Pessoa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.ConnectionFactory;
 
public class PessoaDAO {
 
    // Atributos da classe
    private final Connection conexao;
 
    /**
     * Método construtor da classe que recebe uma conexão ao er instanciada
     */
    public PessoaDAO() throws SQLException {
        this.conexao = ConnectionFactory.getInstance().getConnection();
    }
 
    /**
     * Método listar - recupera os registros no banco
     */
    public List<Pessoa> listar() throws SQLException {
 
        // Instrução SQL para recuperar os registros
        String sql = "SELECT * FROM pessoa ORDER BY nome ASC;";
 
        // Lista para receber os registrosrecuperados
        List lstPessoas = new ArrayList();
 
        // Envia a instrução SQL ao banco de dados
        PreparedStatement ps = conexao.prepareStatement(sql);
 
        // Objeto que armazenará os dados recuperados (recordSet)
        ResultSet rs = ps.executeQuery();
 
        /**
         * Percorrer os registros retornados do banco e colocar em uma lista
         * para utilizar depois
         */
        while (rs.next()) {
            // Cria um objeto Pessoa (bean)
            Pessoa p = new Pessoa();
 
            // Atribui ao objeto pessoa os valores retornados do banco
            p.setId(rs.getInt("id"));
            p.setNome(rs.getString("nome"));
            p.setSexo(rs.getString("sexo"));
 
            // Adiciona o objeto pessoa na lista de pessoas
            lstPessoas.add(p);
        }// fim dolaço de repetição (percorreu todos os registros)
        
        // Fecha o  resultSet
        rs.close();
        
        // Fecha o PreparedStatement
        ps.close();
        
        // Fechar a conexão
        conexao.close();
        
        // Retornar a lista com as pessoas encontradas
        return lstPessoas;
    }
}
