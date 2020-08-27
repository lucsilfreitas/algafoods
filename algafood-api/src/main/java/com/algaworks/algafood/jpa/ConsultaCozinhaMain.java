package com.algaworks.algafood.jpa;


import org.springframework.boot.WebApplicationType;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.ApplicationContext;

import com.algaworks.algafood.AlgafoodApiApplication;

//chama o metodo listar


public class ConsultaCozinhaMain {
	
	public static void main(String[] args) {
		
		ApplicationContext applicationContext = new SpringApplicationBuilder(AlgafoodApiApplication.class);
		.web(WebApplicationType.NONE)
		.run(args);
	}



}
