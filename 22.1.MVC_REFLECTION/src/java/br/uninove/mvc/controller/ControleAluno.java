package br.uninove.mvc.controller;

import br.uninove.mvc.dao.AlunoDAO;
import br.uninove.mvc.model.Aluno;
import br.uninove.utils.DAOFactory;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * Servlet Controle do Aluno
 */
public class ControleAluno implements ControllerLogic {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void Inserir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Aluno aluno = new Aluno();
        aluno.setRa(request.getParameter("ra"));
        aluno.setNome(request.getParameter("nome"));
        aluno.setCurso(request.getParameter("curso"));

        // Fábrica de aluno
        AlunoDAO novoAluno = DAOFactory.createAlunoDAO();
        novoAluno.Inserir(aluno);

        request.setAttribute("mensagem", aluno.getNome() + ",  incluído com sucesso!");

        // redireciona para a página de mensagens
        request.getRequestDispatcher("views/default.jsp").forward(request, response);
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void Pesquisar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // prepara a codificação da página
        response.setContentType("text/html;charset=iso-8859-1");

        RequestDispatcher view = request.getRequestDispatcher("views/default.jsp");
        Aluno aluno = new Aluno();

        // verifica se algum campo foi preeenchido
        if (!request.getParameter("ra").isEmpty()) {
            aluno.setRa("%" + request.getParameter("ra") + "%");
        } else if (!request.getParameter("nome").isEmpty()) {
            aluno.setNome("%" + request.getParameter("nome") + "%");
        } else if (!request.getParameter("curso").isEmpty()) {
            aluno.setCurso("%" + request.getParameter("curso") + "%");
        } else {
            request.setAttribute("mensagem", "Nada foi localizado!");
            view.forward(request, response);
        }

        // cria um objeto aluno
        AlunoDAO novoAluno = DAOFactory.createAlunoDAO();
        ArrayList<Aluno> alunos = (ArrayList<Aluno>) novoAluno.Pesquisar(aluno);

        if (!alunos.isEmpty()) {
            request.setAttribute("alunos", alunos);
        } else {
            request.setAttribute("mensagem", "Nada foi localizado!");
        }
        // redireciona para a página de mensagens
        view.forward(request, response);
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @SuppressWarnings("empty-statement")
    public void Listar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AlunoDAO novoAluno = DAOFactory.createAlunoDAO();
        ArrayList<Aluno> alunos = (ArrayList<Aluno>) novoAluno.Listar();

        request.setAttribute("alunos", alunos);

        // redireciona para a página de listagem
        RequestDispatcher view = request.getRequestDispatcher("views/default.jsp");
        view.forward(request, response);
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @SuppressWarnings("empty-statement")
    public void Editar(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        // prepara a codificação da página
        response.setContentType("text/html;charset=iso-8859-1");

        RequestDispatcher view = request.getRequestDispatcher("views/editar.jsp");
        Aluno aluno = new Aluno();

        // recupera o ra do aluno
        aluno.setRa(request.getParameter("ra"));

        // cria um objeto aluno
        AlunoDAO novoAluno = DAOFactory.createAlunoDAO();
        ArrayList<Aluno> alunos = (ArrayList<Aluno>) novoAluno.Pesquisar(aluno);

        request.setAttribute("alunos", alunos);

        // redireciona para a página de mensagens
        view.forward(request, response);
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @SuppressWarnings("empty-statement")
    public void Salvar(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // prepara a codificação da página
        response.setContentType("text/html;charset=iso-8859-1");

        RequestDispatcher view = request.getRequestDispatcher("views/default.jsp");

        Aluno aluno = new Aluno();
        aluno.setRa(request.getParameter("ra"));
        aluno.setNome(request.getParameter("nome"));
        aluno.setCurso(request.getParameter("curso"));

        // Fábrica de aluno
        AlunoDAO novoAluno = DAOFactory.createAlunoDAO();
        novoAluno.Editar(aluno);

        request.setAttribute("mensagem", aluno.getNome() + ", alterado com sucesso!");

        // redireciona para a página de mensagens
        view.forward(request, response);
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void Limpar(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        RequestDispatcher view = request.getRequestDispatcher("index.jsp");
        view.forward(request, response);
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void Excluir(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        RequestDispatcher view = request.getRequestDispatcher("views/default.jsp");

        Aluno aluno = new Aluno();
        aluno.setRa(request.getParameter("ra"));

        // Fábrica de aluno
        AlunoDAO novoAluno = DAOFactory.createAlunoDAO();
        novoAluno.Excluir(aluno);

        request.setAttribute("mensagem", "Aluno excluído com sucesso!");
        view.forward(request, response);
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void executar(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
