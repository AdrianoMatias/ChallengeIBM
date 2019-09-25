package br.com.email.ProjetoEmail;

/*import javax.mail.Session;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.SimpleEmail;

public class TesteEmail {

	public static void main(String[] args) {
		
		String meuEmail = "falcon_it2019@hotmail.com";
		String minhaSenha = "fiap2019";
		
		SimpleEmail email = new SimpleEmail();
		email.setHostName("smtp.live.com");
	    email.setSmtpPort(25);
	    email.setAuthenticator(new DefaultAuthenticator(meuEmail, minhaSenha));
	    email.setSSLOnConnect(true);
	    
	    	
		try {
			email.setFrom(meuEmail);
			email.setSubject("Email para senha");
			email.setMsg("presta atenção na porra da senha");
			email.addTo("joao01.albuquerque@hotmail.com");
			email.send();
			System.out.println("Email enviado com sucesso!");
			
		} catch (Exception e) {
		e.printStackTrace(); }
	} }

//AS DUAS FORMAS DÁ CERTO, PORÉM O EMAIL EMITENTE TEM QUE SER GMAIL.COM, COM OUTRO NÃO VAI
*/
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class TesteEmail {
	public static void main(String[] args) {
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
				return new PasswordAuthentication("joao01.albuquerque@hotmail.com", "");
			}
		});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("joao01.albuquerque@hotmail.com")); // Remetente

			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("")); // Destinatário(s)
			message.setSubject("Enviando email com JavaMail");// Assunto
			message.setText("Enviei este email utilizando Java com minha conta Hotmail");
			/** Método para enviar a mensagem criada */
			Transport.send(message);

			System.out.println("Feito!!!");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}
