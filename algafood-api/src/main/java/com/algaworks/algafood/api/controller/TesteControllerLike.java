package com.algaworks.algafood.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.algaworks.algafood.domain.model.Estado;
import com.algaworks.algafood.domain.repository.EstadoRepository;

@RestController
@RequestMapping("/teste")
public class TesteControllerLike {

	@Autowired
	private EstadoRepository estadoRepository;
	
	@GetMapping("/estados/por-nomelike")
	public List<Estado> estadoPorNome( @RequestParam("nome") String nome){
		return estadoRepository.consultarPorNomeLike(nome);
	}

	
	
}
