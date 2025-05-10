/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet.exemplo;
 
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class TerceiroExemplo extends HttpServlet {
 
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
        // Declara uma variável para recuperar o dado enviado pelo formulário
        String nome = request.getParameter("nome");
 
        // Valor para uma variável ser apresentada em outro local
        request.setAttribute("resultado2", nome);
 
        // Redirecionamento para uma página ou outro método (Servlet)
        RequestDispatcher disp = request.getRequestDispatcher("mensagem2.jsp");
        disp.forward(request, response);
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
 
        // Declara uma variável para recuperar o dado enviado pelo formulário
        String nome = request.getParameter("nome");
 
        // Valor para uma variável ser apresentada em outro local
        request.setAttribute("resultado", nome);
 
        // Redirecionamento para uma página ou outro método (Servlet)
        RequestDispatcher disp = request.getRequestDispatcher("mensagem.jsp");
        disp.forward(request, response);
    }
}