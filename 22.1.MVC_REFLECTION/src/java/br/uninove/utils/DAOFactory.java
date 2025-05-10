package br.uninove.utils;

import br.uninove.mvc.dao.AlunoDAO;
import br.uninove.mvc.dao.JDBCAlunoDAO;

/**
 *
 * Classe que fabrica (factory) DAOs
 */
public class DAOFactory {
    public static AlunoDAO createAlunoDAO(){
        return new JDBCAlunoDAO();
    }
}
