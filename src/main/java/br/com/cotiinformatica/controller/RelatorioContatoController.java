package br.com.cotiinformatica.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RelatorioContatoController {

	@RequestMapping(value = "/admin/relatorio-contato")
	public ModelAndView relatorioContato() {

		// WEB-INF/views/admin/relatorio-contato
		ModelAndView modelAndView = new ModelAndView("admin/relatorio-contato");
		return modelAndView;
	}

}
