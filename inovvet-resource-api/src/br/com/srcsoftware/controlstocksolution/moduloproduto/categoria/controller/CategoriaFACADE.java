package br.com.srcsoftware.controlstocksolution.moduloproduto.categoria.controller;

import java.util.List;

import br.com.srcsoftware.controlstocksolution.moduloproduto.categoria.model.CategoriaSERVICE;
import br.com.srcsoftware.manager.abstracts.AbsctractPO;
import br.com.srcsoftware.manager.exceptions.BackendException;
import br.com.srcsoftware.manager.interfaces.Crud;

/**
 * 
 * Classe que representa a liga��o entre o front-end e o back-end
 * classe respon�vel por interligar a camda VIEW com a camada de MODEL(neg�cio);
 *
 *
 * @author Diego P�go <diegodamascenopego@hotmail.com.br>
 * @since 24 de jul de 2018 22:23:43
 * @version 1.0
 */
public final class CategoriaFACADE implements Crud{

	/** Garante a aplica��o da associa��o entre o CONTROLLER e om SERVICE */
	private final CategoriaSERVICE SERVICE;

	public CategoriaFACADE(){
		SERVICE = new CategoriaSERVICE();
	}

	@Override
	public void inserir( AbsctractPO po ) throws BackendException {
		System.out.println( "Facade inserir" );
		SERVICE.inserir( po );

	}

	@Override
	public void alterar( AbsctractPO po ) throws BackendException {
		System.out.println( "Facade alterar" );
		SERVICE.alterar( po );

	}

	@Override
	public void excluir( AbsctractPO po ) throws BackendException {
		System.out.println( "Facade excluir" );
		SERVICE.excluir( po );

	}

	@Override
	public List filtrar( AbsctractPO po ) throws BackendException {
		System.out.println( "Facade filtrar" );
		return SERVICE.filtrar( po );
	}

	@Override
	public AbsctractPO filtrarPorId( String id ) throws BackendException {
		System.out.println( "Facade filtrar por id" );
		return SERVICE.filtrarPorId( id );
	}

}
