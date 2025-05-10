/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package jdbc.aluno;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class Aluno extends HttpServlet{
 
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * 
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()){
            // Variáveis para a conexão com o banco de dados
            String usuario = "root"     ;
            String senha   = "";
            String banco   = "alunos"   ;
            String host    = "127.0.0.1";
            String driver  = "com.mysql.jdbc.Driver";
                    
            Connection conexao = null;
 
            /**
             * jdbc:mysql - indica qual é o tipo do driver (sempre jdbc) e o
             * banco de dados que será utilizado
             *
             * host - nome ou ip do servidor onde está o banco de dados
             *
             * banco - nome do banco de dados
             * 
            */
            String connectionURL = "jdbc:mysql://" + host + "/" + banco;
 
            try {
                /**
                 * Carrega na memória o driver JDBC de acordo com o banco de
                 * dados. Quando se utiliza o método estático Class.forName(), o
                 * Class Loader tenta inicializar esta classe. Esta classe (que
                 * é o driver jdbc), possui um bloco inicializador estático que
                 * irá registrar essa classe como um driver JDBC, avisando o
                 * java.sql.DriverManager através do método registerDriver. A
                 * classe Class tem como função instanciar a classe identificada
                 * entre parênteses e registrá-la com a JVM, que irá utilizá-la
                 * para acessar o SGBD. Após o registro do driver, já é possível
                 * abrir a conexão.
                 * 
                */
                Class.forName(driver);
 
                /**
                 * Representa uma conexão ativa e aberta ao banco de dado a
                 * partir da conexão pode-se enviar statements SQL para o banco
                 * 
                */
                conexao = DriverManager.getConnection(connectionURL, usuario, senha);
 
                // Recebe os valores digitados no formulário
                String nome  = request.getParameter("nome") ;
                String curso = request.getParameter("curso");
 
                // String SQL para inclusão no banco
                String sql = "INSERT INTO aluno (nome, curso) " + "VALUES ('" + nome + "','" + curso + "')";
 
                // Armazena e envia a solicitação ao banco de dados
                Statement stmt = conexao.createStatement();
 
                // Realiza a execução da instrução SQL
                stmt.execute(sql);
 
                // Fecha a conexão com o banco de dados
                stmt.close();
 
                // Cria um objeto para redirecionar
                RequestDispatcher disp = request.getRequestDispatcher("index.html");
 
                // Realiza o redirecionamento para uma outra página
                disp.forward(request, response);
 
                }catch (Exception e){
                    out.println("Erro ao inserir os dados!\n" + e.getMessage());
                }
            }
        }
 
        /**
         * Handles the HTTP <code>GET</code> method.
         *
         * @param request servlet request
         * @param response servlet response
         * 
         * @throws ServletException if a servlet-specific error occurs
         * @throws IOException if an I/O error occurs
         * 
        */
        @Override
        
        protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
            response.setContentType("text/html;charset=UTF-8");
            
            try (PrintWriter out = response.getWriter()){
 
                // Variáveis para a conexão com o banco de dados
                String usuario = "root";
                String senha = "";
                String banco = "alunos" ;
                String host = "127.0.0.1";
                String driver = "com.mysql.jdbc.Driver";
                
                Connection conexao = null;
                
                String connectionURL = "jdbc:mysql://" + host + "/" + banco;
 
                try {
                    // Carrega o drive do banco de dados
                    Class.forName(driver);
                    
                    // Recebe a conexão do banco de dados
                    conexao = DriverManager.getConnection(connectionURL, usuario, senha);
 
                    // String SQL para inclusão no banco
                    String sql = "SELECT * FROM aluno;";
 
                    // Armazena a solicitação ao banco de dados
                    Statement stmt = conexao.createStatement();
 
                    // Realiza a execução da instrução SQL
                    stmt.execute(sql);
 
                    // Recebe os registros retornador pelo banco de dados
                    ResultSet rs = stmt.getResultSet();
 
                    // Exibe mensagem de listagem dos registros
                    out.print("Listando os registros...<br><br>");
                    
                    // Percorre o conjunto de registros recuperados e exibe
                    while (rs.next()){
                        out.print("Id: " + rs.getInt("id") + "<br>");
                        out.print("Nome: " + rs.getString("nome") + "<br>");
                        out.print("Curso: " + rs.getString("curso") + "<br><br>");
                    }
 
                    // Coloca um link para retonar ao Menu
                    out.print("<a href=\"index.html\">Menu</a>");
 
                    // Fecha a conexão com o banco de dados
                    stmt.close();
 
                }catch (Exception e){
                    out.println("Erro ao listar registros!\n" + e.getMessage());
                
                }
            }
        }
    }