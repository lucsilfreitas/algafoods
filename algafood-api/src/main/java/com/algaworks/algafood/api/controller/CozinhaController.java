package com.algaworks.algafood.api.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.algaworks.algafood.domain.model.Cozinha;
import com.algaworks.algafood.domain.repository.CozinhaRepository;
import com.algaworks.algafood.domain.service.CadastroCozinhaService;
import com.algaworks.algafood.jpa.CadastroCozinha;

@RestController
@RequestMapping("/cozinhas")
public class CozinhaController {

	@Autowired
	private CozinhaRepository cozinhaRepository;
	
	@Autowired
	private CadastroCozinhaService cadastroCozinha;
	
	//lista tudo
	@GetMapping
	public List<Cozinha> listar(){
		return cozinhaRepository.Listar();
	}
	
	//buscar
	@GetMapping("/{cozinhaId}")
	public ResponseEntity<Cozinha> buscar(@PathVariable Long cozinhaId) {
		Cozinha cozinha = cozinhaRepository.buscar(cozinhaId);
		
		if (cozinha != null) {
			
			//return ResponseEntity.status(HttpStatus.OK).body(cozinha);
			return ResponseEntity.ok(cozinha); //um atalho para o codigo acima
		}
		
			//return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
			return ResponseEntity.notFound().build();
	}

		//salvar
		@PostMapping
		@ResponseStatus(HttpStatus.CREATED)
		@Transactional
		public Cozinha adicionar(@RequestBody Cozinha cozinha) {
			 return cadastroCozinha.salvar(cozinha);
		}
		
		//edição
		@PutMapping("/{cozinhaId}")
		@Transactional
		public ResponseEntity<Cozinha> atualizar(@PathVariable Long cozinhaId,
				@RequestBody Cozinha cozinha){
			
			Cozinha cozinhaAtual = cozinhaRepository.buscar(cozinhaId);
			//cozinhaAtual.setNome(cozinha.getNome());
			
			
			if (cozinhaAtual != null) {
			
			BeanUtils.copyProperties(cozinha, cozinhaAtual, "id"); //O Id foi tratado como excessão porque não pode ser alterado
			cozinhaRepository.salvar(cozinhaAtual);
			return ResponseEntity.ok(cozinha);
			
			}
			
			return ResponseEntity.notFound().build();
			
		}
	
		
		//delete
		@DeleteMapping("/{cozinhaId}")
		@Transactional
		public ResponseEntity<Cozinha> remover(@PathVariable Long cozinhaId) {
			
			Cozinha cozinha = cozinhaRepository.buscar(cozinhaId);
			//cozinhaAtual.setNome(cozinha.getNome());
			
			
			if (cozinha != null) {
						
			cozinhaRepository.remover(cozinha);
			return ResponseEntity.noContent().build();
			
			}
			
			return ResponseEntity.notFound().build();
			
		}
		
		
	}
