package model;

import java.time.LocalDateTime;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class EnviarCorreo {
	
	public EnviarCorreo() {
    }
	
	static final String FROM="daticars@gmail.com";
	static final String FROMNAME="DatiCars";
	static final String TO="";
	static final String SMTP_USERNAME="daticars@gmail.com";
	static final String SMTP_PASSWORD="daticars2021";
	static final String CONFIGSET="ConfigSet";
	static final String HOST="smtp.gmail.com";
	static final int PORT= 587;
	static final String SUBJECT="Envio de correo desde JAVA";
	String BODY=String.join(System.getProperty("line.separator"),"prueba de envio correo desde JavaMAil",
			"<h1>Hola amigos</h1>","Este mensaje ah sido enviado con tecnologia java");
	
	public boolean enviarCorreoRec(String correo, String url) throws Exception{
		
		boolean enviado = false;		
		Properties propiedades = new Properties();//los almacenamos en un properties
        propiedades.setProperty("mail.smtp.host","smtp.gmail.com");//configuiramos el host por el cual se enviara el correo, en este caso gmail
        propiedades.setProperty("mail.smtp.starttls.enable","true");//indicamos que vamos a utilizar tls
        propiedades.setProperty("mail.smtp.port","587");//establecemos el puerto de correo
        propiedades.setProperty("mail.smtp.auth","true");//establecemos que utilizaremos autenticacion
        
        //modificar mensaje
        BODY += "<a href='"+url+"'>Recuperar Contraseña</a>";
        
        try {
		Session session = Session.getInstance(propiedades,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(SMTP_USERNAME, SMTP_PASSWORD);
                    }
                });
		MimeMessage msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress(FROM, FROMNAME));
		msg.setRecipient(Message.RecipientType.TO, new InternetAddress(correo));
		
		msg.setContent(BODY, "text/html");
		msg.setHeader("X-SES-CONFIGURATION-SET", CONFIGSET);
		Transport transport = session.getTransport();
		
		
			System.out.print("Enviando mensaje...");
			transport.connect(HOST,SMTP_USERNAME,SMTP_PASSWORD);
			Transport.send(msg, msg.getAllRecipients());
			System.out.println("mensaje enviado");
			transport.close();
			enviado = true;
		}
		catch(Exception ex) {
			System.out.println("El mensaje no se ha podido enviar");
			System.out.println("Error: " + ex.getMessage());
		}
		
        return enviado;
	}
	
	
	/*generar codigo aleatorio*/
	public static String getHash(String txt, String hashType) {
        try {
            java.security.MessageDigest md = java.security.MessageDigest
                    .getInstance(hashType);
            byte[] array = md.digest(txt.getBytes());
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < array.length; ++i) {
                sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100)
                        .substring(1, 3));
            }
            return sb.toString();
        } catch (java.security.NoSuchAlgorithmException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
	
	/* Retorna un hash SHA1 a partir de un texto */
    public  String sha1() {
        String txt = LocalDateTime.now().toString();
        System.out.println(txt);

        return EnviarCorreo.getHash(txt, "SHA1");
    }

}




