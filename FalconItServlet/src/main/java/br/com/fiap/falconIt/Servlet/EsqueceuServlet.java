package br.com.fiap.falconIt.Servlet;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.falconIt.dao.UsuarioDAO;

@WebServlet("/esqueceu")
public class EsqueceuServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Properties props = new Properties();
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.host", "smtp.live.com");
		props.put("mail.smtp.socketFactory.port", "587");
		props.put("mail.smtp.socketFactory.fallback", "false");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "587");
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("falcon_it2019@hotmail.com", "fiap2019");
			}
		});
		UsuarioDAO usu_dao = null; 
		String email = req.getParameter("email");
		try {
			usu_dao = new UsuarioDAO();
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("falcon_it2019@hotmail.com")); // Remetente

			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email)); // Destinatário(s)
			message.setSubject("Recuperação de Senha - Falcon IT");// Assunto
			message.setText("Sua senha do site é: "+usu_dao.getSenha(email));
			/** Método para enviar a mensagem criada */
			Transport.send(message);

			System.out.println("E-mail enviado com sucesso!");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				usu_dao.encerrar();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
