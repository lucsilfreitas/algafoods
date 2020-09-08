package com.algaworks.algafood.api.controller;

import static com.algaworks.algafood.infrastructure.repository.sepec.RestauranteSpecs.comFreteGratis;
import static com.algaworks.algafood.infrastructure.repository.sepec.RestauranteSpecs.comNomeSemelhante;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.algaworks.algafood.domain.model.Cozinha;
import com.algaworks.algafood.domain.model.Restaurante;
import com.algaworks.algafood.domain.repository.CozinhaRepository;
import com.algaworks.algafood.domain.repository.RestauranteRepository;



@RestController
@RequestMapping("/teste")
public class TesteController {
	
	@Autowired
	private CozinhaRepository cozinhaRepository;
	
	@Autowired
	private RestauranteRepository restauranteRepository;
	
	@GetMapping("/cozinhas/por-nome")
	public List<Cozinha> cozinhasPorNome(String nome){
		return cozinhaRepository.nome(nome);
	}
	
	@GetMapping("/cozinhas/por-nome/like")
	public List<Cozinha> cozinhaPorNome(String nome){
		return cozinhaRepository.findTodasByNomeContaining(nome);
	}
	
	//Query boolean
	@GetMapping("/cozinhas/exists")
	public boolean cozinhaExists(String nome) {
		return cozinhaRepository.existsByNome(nome);
	}
	
	
	
	@GetMapping("/restaurantes/por-taxa-frete")
	public List<Restaurante> restaurantesPorTaxaFrete(BigDecimal taxaInicial, BigDecimal taxaFinal){
		return restauranteRepository.findByTaxaFreteBetween(taxaInicial, taxaFinal);
	}
	
}
	
	
	/*
	@GetMapping("/restaurantes/por-nome")
	public List<Restaurante> restaurantesPorTaxaFrete(String nome, Long cozinhaId){
		return restauranteRepository.findByNomeContainingAndCozinhaId(nome, cozinhaId);
	}

	//query primeiro registro consultado
	@GetMapping("/restaurantes/primeiro-por-nome")
	public Optional<Restaurante> restaurantesPrimeiroreg(String nome){
		return restauranteRepository.findFirstByNomeContaining(nome);
	}
	
	//query TOP 2 registro consultado
	@GetMapping("/restaurantes/top2-por-nome")
	public List<Restaurante> restaurantesTop2(String nome){
		return restauranteRepository.findTop2ByNomeContaining(nome);
	}
	

	//consulta por nome via query sql modelo JPQL
	@GetMapping("/restaurantes/por-nome-sql")
	public List<Restaurante> restaurantePorNomesql(String nome){
		return restauranteRepository.consultarPorNome(nome);
	}
	
	//consulta customozada 
	@GetMapping("/restaurantes/por-nome-e-frete")
	public List<Restaurante> restaurantesPorNomeFrete( String nome, BigDecimal taxaFreteInicial, 
			BigDecimal taxaFreteFinal){
		return restauranteRepository.find(nome, taxaFreteInicial, taxaFreteFinal);
	}
	
	//consulta Specification 
	@GetMapping("/restaurantes/com-frete-gratis")
	public List<Restaurante> restaurantesComFreteGratis(String nome) {
		
		return restauranteRepository.findAll(comFreteGratis()
				.and(comNomeSemelhante(nome)));
	}
	
}



/*
//contar
@GetMapping("/restaurantes/count-por-cozinha")
public int restaurantesCountPorRestaurate(Long restauranteId){
	return restauranteRepository.countByRestauranteId(restauranteId);
}*/
