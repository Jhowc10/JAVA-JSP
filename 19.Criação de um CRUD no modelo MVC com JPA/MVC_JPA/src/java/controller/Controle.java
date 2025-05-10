/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import model.AlunoDAO;
import entity.Aluno;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.GeraRa;
 
public class Controle extends HttpServlet {
 
    private static final long serialVersionUID = 1L;
 
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
 
        // Variável que receberá o valor da flag enviado pelo formulário
        String flag = request.getParameter("flag");
 
        // Declaração do objeto DAO para o aluno
        AlunoDAO alunoDAO;
        List<Aluno> alunos;
 
        try (PrintWriter out = response.getWriter()) {
 
            // Direciona para a página que está determinada no parâmetro do método
            if (flag == null) {
                request.getRequestDispatcher("index.html").forward(request, response);
            }
 
            /**
             * Recupera os valores infrmados no fomulário pelo usuário
             */
            String nome = request.getParameter("nomeAluno");
            String curso = request.getParameter("cursoAluno");
            String disciplina = request.getParameter("disciplinaAluno");
            String email = request.getParameter("emailAluno");
 
            // Verifica qual ação deve ser tomada
            switch (flag) {
                case "cadastrar":
                    // Cria uma lista para colocar o aluno
                    alunos = new ArrayList<>();
 
                    /**
                     * cria um objeto do tipo Aluno e atribui os dados à ele
                     */
                    Aluno aluno = new Aluno();
                    aluno.setId(Integer.SIZE);
                    aluno.setRa(new GeraRa().getRa());
                    aluno.setNome(nome);
                    aluno.setCurso(curso);
                    aluno.setDisciplina(disciplina);
                    aluno.setEmail(email);
 
                    /**
                     * Repassa os valores dos atributos para o objeto que irá
                     * manipular os dados e gravar no banco
                     */
                    alunoDAO = new AlunoDAO();
                    alunoDAO.incluir(aluno);
 
                    //Coloca o aluno cadastrado na lista
                    alunos.add(aluno);
 
                    // Cria uma variável com o aluno para ser utilizado na View
                    request.setAttribute("listaAluno", alunos);
 
                    // Redireciona para a View
                    request.getRequestDispatcher("views/mensagem.jsp").forward(request, response);
                    break;
 
                case "listar":
                    // Busca no model os dados
                    alunoDAO = new AlunoDAO();
 
                    // Coloca todos os alunos em uma lista
                    alunos = alunoDAO.listar();
 
                    request.setAttribute("listaAlunos", alunos);
 
                    // Redireciona para a View
                    request.getRequestDispatcher("views/lista_alunos.jsp").forward(request, response);
 
                    break;
 
                case "pesquisar":
                    int id = Integer.parseInt(request.getParameter("id"));
                    // Busca no model os dados
                    alunoDAO = new AlunoDAO();
 
                    aluno = new Aluno();
                    aluno.setId(id);
 
                    // Coloca todos os alunos em uma lista
                    alunos = alunoDAO.pesquisar(aluno);
 
                    request.setAttribute("listaAlunos", alunos);
 
                    // Redireciona para a View
                    request.getRequestDispatcher("views/editar.jsp").forward(request, response);
 
                    break;
 
                /**
                 * Realiza o salvamento do registro após a edição dos dados no
                 * formulário
                 */
                case "salvar":
                    alunoDAO = new AlunoDAO();
                    id = Integer.parseInt(request.getParameter("id"));
                    aluno = new Aluno();
                    aluno.setId(id);
                    aluno.setRa(new GeraRa().getRa());
                    aluno.setNome(nome);
                    aluno.setCurso(curso);
                    aluno.setDisciplina(disciplina);
                    aluno.setEmail(email);
 
                    /**
                     * Realiza a atualização do registro
                     */
                    alunoDAO.atualizar(aluno);
 
                    // Redireciona para a View
                    request.getRequestDispatcher("Controle?flag=listar").forward(request, response);
 
                    break;
 
                /**
                 * Realiza a exclusão do registro
                 */
                case "excluir":
                    alunoDAO = new AlunoDAO();
                    id = Integer.parseInt(request.getParameter("id"));
                    aluno = new Aluno();
                    aluno.setId(id);
 
                    /**
                     * Executa a exclusão no model
                     */
                    alunoDAO.excluir(aluno);
 
                    // Redireciona para a View
                    request.getRequestDispatcher("Controle?flag=listar").forward(request, response);
 
                    break;
            }
        }
    }
 
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
 
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
 
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
 
}
