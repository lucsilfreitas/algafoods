package com.algaworks.algafood.domain.repository;

import java.util.List;
import java.util.Optional;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.algaworks.algafood.domain.model.Restaurante;


import java.math.BigDecimal;

public interface RestauranteRepository 
		extends JpaRepository<Restaurante, Long>, RestauranteRepositoryQueries, JpaSpecificationExecutor<Restaurante> {
	
	List<Restaurante>  findByTaxaFreteBetween(BigDecimal taxaInicial, BigDecimal taxaFinal);// entre valores
	
	//Query and com 2 campos
	//List<Restaurante>  findByNomeContainingAndrestauranteId(String nome, Long restaurante); //busca o nome com o ID = o and do sql
	
	//Query primeiro registro
	Optional<Restaurante> findFirstByNomeContaining(String nome);
	
	//TOP 2
	List<Restaurante> findTop2ByNomeContaining(String nome);

	// contar
	//int countByRestauranteId(Long nome);
	
	//modo diferente JPQL
	
	//@Query("from Restaurante where nome like %:nome%") sem o xml 
	//Com o XML via arquivo ORM
	List<Restaurante> consultarPorNome(String nome);
	
	

		
	

	

	
	
	
}
