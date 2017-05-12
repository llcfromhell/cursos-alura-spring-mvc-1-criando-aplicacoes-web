package org.casadocodigo.loja.controllers;

import org.casadocodigo.loja.models.Produto;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()

public class ProdutosController {

	@RequestMapping(value="/produtos/form")
	public String form() {
		return "produtos/form";
	}
	
	@RequestMapping(value="/produtos")
	public String postForm(Produto produto) {
		System.out.format("Iitulo = %s, descricao = %s, paginas = %d", titulo, descricao, paginas);
		return "produtos/form";
	}
	
}
