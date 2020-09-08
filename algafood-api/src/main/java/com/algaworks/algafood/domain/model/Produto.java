package com.algaworks.algafood.domain.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
public class Produto {
	
	@EqualsAndHashCode.Include
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "produto_nome")
	private String nome;
	
	@Column(name = "produto_descricao")
	private String descricao;
	
	@Column(name = "produto_preco")
	private BigDecimal preco;
	
	@Column(name = "produto_status")
	boolean ativo;
	
	@ManyToOne
	@JoinColumn(name = "produto_restaurante_id") // este é o relacionamento entre o restaurante que receberá o valor
	private Restaurante restaurante;

}
