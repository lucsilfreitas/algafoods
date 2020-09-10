package com.algaworks.algafood.domain.exception;

public class CozinhaNaoEncontradoException extends EntidadeNaoEncontradaException{

	private static final long serialVersionUID = 1L;
	

	public CozinhaNaoEncontradoException(String mensagem) {
		super(mensagem);
	}
	
	
	public CozinhaNaoEncontradoException(Long cozinhaId) {
			this (String.format("Não existe uma cozinha de cidade com código %d", cozinhaId));
	}

}
