package br.com.cotiinformatica.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.github.javafaker.Faker;

import br.com.cotiinformatica.entities.Usuario;
import br.com.cotiinformatica.messages.EmailMessage;
import br.com.cottiinformatica.com.repositories.UsuarioRepository;
@Controller
public class PasswordController {

	@RequestMapping(value = "/password")
	public ModelAndView password() {
		
		ModelAndView modelAndView = new ModelAndView("password");
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/password-user", method = RequestMethod.POST)
	public ModelAndView passwordUser(HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView("password");
		
		try {
			String email = request.getParameter("email");
			
			UsuarioRepository usuarioRepository = new UsuarioRepository();
			Usuario usuario = usuarioRepository.findByEmail(email);
			
			if(usuario != null) {
				
				Faker faker = new Faker(new Locale("pt-BR"));
				String novaSenha = faker.internet().password(8,10);
				
				String assunto = "Recuperação de acesso - Agenda de Contatos";
				String mensagem = "Olá " + usuario.getNome()
								  + "\n\nUma nova senha de acesso foi gerada com sucesso!"
								  + "\n Utilize a nova senha: " + novaSenha + " para acessar sua conta."
								  + "\n\n Att"
								  +"\nEquipe Agenda de Contatos";
				
				EmailMessage.send(usuario.getEmail(), assunto, mensagem);
				
				usuarioRepository.update(usuario.getIdUsuario(), novaSenha);
				
				modelAndView.addObject("mensagem_sucesso", "Uma nova senha foi enviada para o seu email com sucesso!");
				
			}else {
				modelAndView.addObject("mensagem_erro", "O email informado não foi encontrado, tente outro.");
			}
			
			
		}catch(Exception e) {
			modelAndView.addObject("mensagem_erro", "Falha ao recuperar senha.");
		}
		
		return modelAndView;
		
	}
	
	
}
