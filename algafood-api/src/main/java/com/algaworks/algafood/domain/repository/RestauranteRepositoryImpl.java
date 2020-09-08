package com.algaworks.algafood.domain.repository;

import static com.algaworks.algafood.infrastructure.repository.sepec.RestauranteSpecs.comFreteGratis;
import static com.algaworks.algafood.infrastructure.repository.sepec.RestauranteSpecs.comNomeSemelhante;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.algaworks.algafood.domain.model.Restaurante;


@Repository
public class RestauranteRepositoryImpl implements RestauranteRepositoryQueries {

	@PersistenceContext
	private EntityManager manager;
	
	@Autowired @Lazy	
	private  RestauranteRepository restauranteRepository;
	
	@Override
	public List<Restaurante> find(String nome,
			BigDecimal taxaFreteInicial, BigDecimal taxaFreteFinal) {
		
		var jpql =  new StringBuilder();
		jpql.append("from Restaurante where 0 = 0 ");
		
		if (StringUtils.hasLength(nome)) {
			jpql.append("and nome like :nome ");
		}
		
		if (taxaFreteInicial != null) {
			jpql.append("and taxaFrete >= :taxaInicial ");
		}
		
		if (taxaFreteFinal != null) {
			jpql.append("and taxaFrete <= :taxaFinal ");
		}
		
		
		return manager.createQuery(jpql.toString(), Restaurante.class)
				.setParameter("nome", "%" +nome + "%")
				.setParameter("taxaInicial", taxaFreteInicial)
				.setParameter("taxaFinal", taxaFreteInicial)
				.getResultList();
		
	}

	@Override
	public List<Restaurante> findComFreteGratis(String nome) {
		
		return restauranteRepository.findAll(comFreteGratis()
				.and(comNomeSemelhante(nome)));
		
	}
	
	
}
