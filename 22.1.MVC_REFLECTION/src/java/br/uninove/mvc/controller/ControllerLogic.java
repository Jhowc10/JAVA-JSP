package br.uninove.mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * Interface que implementa um método para os controles usarem
 */
public interface ControllerLogic {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void executar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
