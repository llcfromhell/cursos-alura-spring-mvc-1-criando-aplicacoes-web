package org.casadocodigo.loja.controllers;

import org.casadocodigo.loja.daos.ProdutoDAO;
import org.casadocodigo.loja.models.Produto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()

public class ProdutosController {

	@Autowired
	private ProdutoDAO dao;
	
	@RequestMapping(value="/produtos/form")
	public String form() {
		return "produtos/form";
	}
	
	@RequestMapping(value="/produtos/post")
	public String postForm(Produto produto) {
		
		dao.gravar(produto);
		
		System.out.format("Iitulo = %s, descricao = %s, paginas = %d", produto.getTitulo(), produto.getDescricao(), produto.getPaginas());
		System.out.println();
		
		return "produtos/ok";
	}
	
}
