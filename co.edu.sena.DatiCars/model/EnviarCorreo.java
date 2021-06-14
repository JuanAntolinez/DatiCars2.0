package model;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class EnviarCorreo {
	
	static final String FROM="jgantolinez@misena.edu.co";
	static final String FROMNAME="DatiCars";
	static final String TO="daticars@gmail.com";
	static final String SMTP_USERNAME="jgantolinez@misena.edu.co";
	static final String SMTP_PASSWORD="0317189146";
	static final String CONFIGSET="ConfigSet";
	static final String HOST="smtp.gmail.com";
	static final int PORT= 587;
	static final String SUBJECT="Envio de correo desde JAVA";
	static final String BODY=String.join(System.getProperty("line.separator"),"prueba de envio correo desde JavaMAil",
			"<h1>Hola amigos</h1>","Este mensaje ah sido enviado con tecnologia java");
	
	public static void main(String[] args) throws Exception{
		
		Properties props = System.getProperties();
		props.put("mail.trasport.protocol", "smtp");
		props.put("mail.smtp.port", PORT);
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		Session session = Session.getDefaultInstance(props);
		MimeMessage msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress(FROM, FROMNAME));
		msg.setRecipient(Message.RecipientType.TO, new InternetAddress(TO));
		msg.setContent(BODY, "text/html");
		msg.setHeader("X-SES-CONFIGURATION-SET", CONFIGSET);
		Transport transport = session.getTransport();
		
		try {
			System.out.print("Enviando mensaje...");
			transport.connect(HOST,SMTP_USERNAME,SMTP_PASSWORD);
			Transport.send(msg, msg.getAllRecipients());
			System.out.println("mensaje enviado");
		}
		catch(Exception ex) {
			System.out.println("El mensaje no se ha podido enviar");
			System.out.println("Error: " + ex.getMessage());
		}
		
		finally {
			transport.close();
		}
		
	}
	

}




