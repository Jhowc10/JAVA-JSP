/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import entity.Aluno;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
 
public class AlunoDAO {
 
    private EntityManagerFactory emf;
    private EntityManager em;
    private EntityTransaction et;
 
    /**
     * Inicialização da transação
     */
    private void iniciarTransacao() {
        emf = Persistence.createEntityManagerFactory("MVC_JPAPU");
        em = emf.createEntityManager();
        et = em.getTransaction();
        et.begin();
    }
 
    /**
     * Finalização da transação
     */
    private void finalizarTransacao() {
        et.commit();
        em.close();
    }
 
    public String incluir(Aluno aluno) {
        String status;
        iniciarTransacao();
        
        // realiza a busca do registro para verificar se já existe
        Aluno alunoCadastrado = em.find(Aluno.class, aluno.getId());
        if (alunoCadastrado == null) {
            // Caso não encontre, faz a gravação (persistência)
            em.persist(aluno);
            status = "sucesso";
        } else {
            status = "chave_duplicada";
        }
        finalizarTransacao();
        return status;
    }
 
    /**
     * Realiza a atualização do registro
     * @param aluno
     * @return 
     */
    public String atualizar(Aluno aluno) {
        iniciarTransacao();
 
        em.find(Aluno.class, aluno.getId());
        em.merge(aluno);
 
        finalizarTransacao();
        return "Atualizado com sucesso!";
    }
 
    /**
     * Realiza uma pesquisa e retorna todos os registros encontrados
     * @return 
     */
    public List<Aluno> listar() {
        iniciarTransacao();
        Query query = em.createNamedQuery("Aluno.findAll");
        List listaAlunos = query.getResultList();
        finalizarTransacao();
        return listaAlunos;
    }
 
    /**
     * Realiza uma pesquisa por um termo específico
     * @param aluno
     * @return 
     */
    public List<Aluno> pesquisar(Aluno aluno) {
        iniciarTransacao();
        Query query = em.createNamedQuery("Aluno.findById");
        query.setParameter("id", aluno.getId());
        List listaAlunos = query.getResultList();
        finalizarTransacao();
        return listaAlunos;
    }
 
    /**
     * Realiza a exclusão de um registro
     * @param aluno 
     */
    public void excluir(Aluno aluno) {
        iniciarTransacao();
        Query query = em.createNamedQuery("Aluno.deleteById");
        query.setParameter("id", aluno.getId());
        query.executeUpdate();
        finalizarTransacao();
    }
 
}
