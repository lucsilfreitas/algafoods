package com.algaworks.algafood.domain.model;



import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
//@Table(name = "tab_cozinhas")
public class Cozinha {
	
	@EqualsAndHashCode.Include
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	//@Column( name = "nom_cozinha", length = 30) // Não obrigatório o atributo assume no nome da coluna
	
	//@JsonProperty("titulo")
	@Column (nullable = false)	        
	private String nome;
	
	/*
	@Column (name = "observacao")
	private String descricao;
	
	@JsonIgnore // se não houver vai ter lopop infinito
	@OneToMany(mappedBy = "cozinha")//inverso mapeado cozinha do restaurante
	private List<Restaurante> restaurantes = new ArrayList<>();
	*/

}
