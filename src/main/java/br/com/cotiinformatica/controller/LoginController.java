package br.com.cotiinformatica.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.entities.Usuario;
import br.com.cottiinformatica.com.repositories.UsuarioRepository;

@Controller
public class LoginController {


	@RequestMapping(value = "/")
	public ModelAndView login() {

		// WEB-INF/views/login.jsp
		ModelAndView modelAndView = new ModelAndView("login");
		return modelAndView;
	}


	@RequestMapping(value = "/login-user", method = RequestMethod.POST)
	public ModelAndView loginUser(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView("login");
		
		try {
			

			String email = request.getParameter("email");
			String senha = request.getParameter("senha");
			

			UsuarioRepository usuarioRepository = new UsuarioRepository();
			Usuario usuario = usuarioRepository.findByEmailAndSenha(email, senha);
			
	
			if(usuario != null) {
				
				request.getSession().setAttribute("usuario_auth", usuario);	
				
				modelAndView.setViewName("redirect:admin/home");
			}	
			else {
				modelAndView.addObject("mensagem_erro", "Acesso negado. Usuário inválido.");
			}
		}
		catch(Exception e) {
			modelAndView.addObject("mensagem_erro", "Falha ao autenticar o usuário: " + e.getMessage());
		}
		
		return modelAndView;
	}
	
}
