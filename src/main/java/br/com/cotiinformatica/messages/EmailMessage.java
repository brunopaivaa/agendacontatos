package br.com.cotiinformatica.messages;

import java.util.Properties;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;

public class EmailMessage {

	// método estático para fazer envio de emails
	public static void send(final String mailTo, final String subject, final String body) throws Exception {

		final String conta = "cotinaoresponda@outlook.com";
		final String senha = "@Admin123456";
		final String smtp = "smtp-mail.outlook.com";
		final Integer porta = 587;

		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		mailSender.setUsername(conta);
		mailSender.setPassword(senha);
		mailSender.setHost(smtp);
		mailSender.setPort(porta);

		Properties properties = new Properties();
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.transport.protocol", "smtp");

		mailSender.setJavaMailProperties(properties);

		MimeMessagePreparator preparator = new MimeMessagePreparator() {

			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
				message.setTo(mailTo);
				message.setFrom(conta);
				message.setSubject(subject);
				message.setText(body);
			}
		};

		mailSender.send(preparator);
	}

}
