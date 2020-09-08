package com.algaworks.algafood.domain.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.algaworks.algafood.domain.model.Cozinha;

@Repository
public interface CozinhaRepository extends JpaRepository<Cozinha, Long> {
	

	List<Cozinha> nome(String nome);
	
	List<Cozinha> findTodasByNomeContaining(String nome);

	//query se um retorno é verdadeiro ou falso
	boolean existsByNome(String nome);
	
	
	

}
