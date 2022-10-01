package br.com.cotiinformatica.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.entities.Contato;
import br.com.cotiinformatica.entities.Usuario;
import br.com.cottiinformatica.com.repositories.ContatoRepository;

@Controller
public class ConsultarContatoController {

	@RequestMapping(value = "/admin/consultar-contato")
	public ModelAndView consultarContato(HttpServletRequest request) {

		// WEB-INF/views/admin/consultar-contato
		ModelAndView modelAndView = new ModelAndView("admin/consultar-contato");
		
		try {
			Usuario usuario = (Usuario) request.getSession().getAttribute("usuario_auth");
			
			ContatoRepository contatoRepository = new ContatoRepository();
			List<Contato> lista = contatoRepository.findbyUsuario(usuario.getIdUsuario());
			
			modelAndView.addObject("lista_contatos", lista);
			
			
		}catch(Exception e) {
			modelAndView.addObject("mensagem_erro", "Falha ao consultar contatos: " + e.getMessage());
		}
		
		
		
		
		return modelAndView;
	}

}
