package controller;

import bean.Pessoa;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.LoginDAO;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * Classe que realiza o Login utilizando o formato JSON para troca de mensagens
 */
public class Login extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");

        // Instância de um novo objeto JSON
        JSONObject json = new JSONObject();

        /**
         * Declara um número de parâmetros variável (que será recebido) via
         * protocolo HTTP (url)
         */
        Enumeration paramNames = request.getParameterNames();

        /**
         * Declaração de um vetor de duas (2) posições para receber os
         * parâmetros enviados via URL
         */
        String params[] = new String[2];

        // Declara um contador para enumerar os parâmetros
        int i = 0;

        // Percorre o vetor para coletar o valor de cada parâmetro
        while (paramNames.hasMoreElements()) {
            // Variável para rceber o valor do parâmetro
            String paramName = (String) paramNames.nextElement();

            // Coloca o parâmetro recebido no vetor
            String[] paramValues = request.getParameterValues(paramName);

            // Associa o parâmetro ao seu valor
            params[i] = paramValues[0];

            // Incremento do contador a cada repetição
            i++;
        }

        try {
            // Cria um objeto Pessoa
            Pessoa p = new Pessoa();

            // Atribui os parâmetros recebidos via URL ao objeto Pessoa
            p.setUsuario(params[0]);
            p.setSenha(params[1]);

            // Cria um objeto pDAO
            LoginDAO loginDao = new LoginDAO();

            // Executa a chamada ao método Login e atribui o resultado um uma lista
            List<Pessoa> dados = loginDao.Login(p);

            /**
             * Verifica se o login está correto. Se a lista não estiver vazia,
             * sigifica que encontrou o registro, então preenche o arrayJSON
             */
            if (!dados.isEmpty()) {

                /**
                 * Monta uma lista para colocar os dados do cliente no arrayJSON
                 * que será enviado ao solicitante
                 */
                JSONArray arrayJSON = new JSONArray();
                for (Pessoa valor : dados) {
                    JSONObject objPessoa = new JSONObject();
                    objPessoa.put("pId", valor.getId());
                    objPessoa.put("pNome", valor.getNome());
                    objPessoa.put("pTelefone", valor.getTelefone());

                    // Insere os dados no objeto JSON
                    arrayJSON.add(objPessoa);
                }

                // Retorna o JSON com a lista de campos
                json.put("pessoa", arrayJSON);
            } else {
                // Retorna -1 se o registro não foi localizado
                json.put("pessoa", "-1");
            }
        } catch (SQLException ex) {

        }

        // Realiza o envio do JSON ao solicitante (resposta via HTTP)
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json.toString());
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
