package br.com.cotiinformatica.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AlterarSenhaController {

	@RequestMapping(value="/admin/alterar-senha")
	public ModelAndView alterarSenha() {
		
		ModelAndView modelAndView = new ModelAndView("admin/alterar-senha");
		return modelAndView;
	}
	
}
