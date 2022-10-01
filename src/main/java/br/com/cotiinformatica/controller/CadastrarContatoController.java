package br.com.cotiinformatica.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.entities.Contato;
import br.com.cotiinformatica.entities.Usuario;
import br.com.cottiinformatica.com.repositories.ContatoRepository;

@Controller
public class CadastrarContatoController {

	@RequestMapping(value="/admin/cadastrar-contato")
	public ModelAndView cadastrarContato() {
		
		ModelAndView modelAndView = new ModelAndView("admin/cadastrar-contato");
		return modelAndView;
	}
	@RequestMapping(value ="/admin/executar-cadastro-contato", method = RequestMethod.POST)
	public ModelAndView executarCadastroContato(HttpServletRequest request){
		
		ModelAndView modelAndView = new ModelAndView("admin/cadastrar-contato");
		try{
			Contato contato = new Contato();
			contato.setNome(request.getParameter("nome"));
			contato.setEmail(request.getParameter("email"));
			contato.setTelefone(request.getParameter("telefone"));
			
			Usuario usuario = (Usuario) request.getSession().getAttribute("usuario_auth");
			contato.setUsuario(usuario);
			
			ContatoRepository contatoRepository = new ContatoRepository();
			contatoRepository.create(contato);
			
			modelAndView.addObject("mensagem_sucesso", "Parabéns! Contato " + contato.getNome() + ", cadastrado com sucesso.");
			
		}catch(Exception e) {
			modelAndView.addObject("mensagem_erro", "Falha ao cadastrar o contato: "+ e.getMessage());
		}
		
		
		return modelAndView;
				
	}
	
}
