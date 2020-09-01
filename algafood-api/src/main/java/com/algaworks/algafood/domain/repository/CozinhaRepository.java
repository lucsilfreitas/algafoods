package com.algaworks.algafood.domain.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Component;
import com.algaworks.algafood.domain.model.Cozinha;


public interface CozinhaRepository {
	

	List<Cozinha> Listar();
	Cozinha buscar(Long id);
	Cozinha salvar(Cozinha cozinha);
	void remover(Cozinha cozinha);
	
	@Component
	public class CozinhaRepositoryImpl implements CozinhaRepository {

	    @PersistenceContext
	    private EntityManager manager;
	    
	    @Override
	    public List<Cozinha> Listar() {
	        return manager.createQuery("from Cozinha", Cozinha.class)
	                .getResultList();
	    }
	    
	    @Override
	    public Cozinha buscar(Long id) {
	        return manager.find(Cozinha.class, id);
	    }
	    

		@Override
		public Cozinha salvar(Cozinha cozinha) {
			 return manager.merge(cozinha);
		}

		@Override
		public void remover(Cozinha cozinha) {
	    	cozinha = buscar(cozinha.getId());
	        manager.remove(cozinha);
			
		}


	}

}
