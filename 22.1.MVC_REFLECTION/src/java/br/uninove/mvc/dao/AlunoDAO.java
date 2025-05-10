package br.uninove.mvc.dao;

import br.uninove.mvc.model.Aluno;
import java.util.List;

/**
 *
 * Interface com os métodos a serem implementados para um Aluno
 */
public interface AlunoDAO {

    // declaração dos métodos da interface
    public void Inserir(Aluno aluno);

    public void Excluir(Aluno aluno);

    public List<Aluno> Listar();

    public List<Aluno> Pesquisar(Aluno aluno);

    public void Editar(Aluno aluno);

    public void Salvar(Aluno aluno);
}
