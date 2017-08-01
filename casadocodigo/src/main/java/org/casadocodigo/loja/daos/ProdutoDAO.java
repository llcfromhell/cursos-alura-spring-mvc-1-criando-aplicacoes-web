package org.casadocodigo.loja.daos;
import java.util.Collection;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.casadocodigo.loja.models.Produto;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProdutoDAO extends AbstractDAO{

	@PersistenceContext
    private EntityManager manager;

    public void gravar(Produto produto){
        manager.persist(produto);
    }

	@SuppressWarnings("unchecked")
	public Collection<? extends Produto> listar() {
		return manager.createQuery("select p from Produto p").getResultList();
		
	}
}