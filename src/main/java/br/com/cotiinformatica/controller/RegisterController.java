package br.com.cotiinformatica.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.entities.Usuario;
import br.com.cottiinformatica.com.repositories.UsuarioRepository;

@Controller
public class RegisterController {

	@RequestMapping(value = "/register")
	public ModelAndView register() {

		ModelAndView modelAndView = new ModelAndView("register");
		return modelAndView;
	}

	@RequestMapping(value = "/register-user", method = RequestMethod.POST)
	public ModelAndView registerUser(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView("register");
		
		try {
			Usuario usuario = new Usuario();

			usuario.setNome(request.getParameter("nome"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));

			UsuarioRepository usuarioRepository = new UsuarioRepository();
			
			if (usuarioRepository.findByEmail(usuario.getEmail()) != null) {
				ModelAndView modelAndView2 = new ModelAndView();
				modelAndView2.addObject("erro email", "Erro! o email informado já está cadastrado, tente outro");
			}
			else {
				usuarioRepository.creat(usuario);
				modelAndView.addObject("mensagem_sucesso", "Parabéns, sua conta foi criada com sucesso.");
			}

		}catch (Exception e) {
			modelAndView.addObject("mensagem_erro", e.getMessage());
		}

		return modelAndView;
	}

}
