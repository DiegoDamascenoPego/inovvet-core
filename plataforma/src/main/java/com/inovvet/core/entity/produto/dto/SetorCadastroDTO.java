package com.inovvet.core.entity.produto.dto;

import com.inovvet.app.entity.AbstractEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SetorCadastroDTO extends AbstractEntity{
	
	private String nome;
	
	private boolean ativo;

}
