package beans;

public class AdministradorRegistro {

	private int id;
	private String adminUsuario;
	private String adminEmail;
	private String adminContrasena;
	private String adminNombre;
	private String adminApellido;

	
	public AdministradorRegistro(int id, String adminUsuario, String adminEmail, String adminContrasena, String adminNombre, String adminApellido) {
		super();
		this.id = id;
		this.adminUsuario = adminUsuario;
		this.adminEmail = adminEmail;
		this.adminContrasena = adminContrasena;
		this.adminNombre = adminNombre;
		this.adminApellido = adminApellido;


	}
	
	public AdministradorRegistro() {
		super();
	}
	
	public String getUsuarioAdmin() {
		return adminUsuario;
	}

	public void setUsuarioAdmin(String adminUsuario) {
		this.adminUsuario = adminUsuario;
	}

	public int getIdUsuarioAdmin() {
		return id;
	}

	public void setIdUsuarioAdmin(int id) {
		this.id = id;
	}

	public String getEmailAdmin() {
		return adminEmail;
	}

	public void setEmailAdmin(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getContrasenaAdmin() {
		return adminContrasena;
	}

	public void setContrasenaAdmin(String adminContrasena) {
		this.adminContrasena = adminContrasena;
	}

	public int getIdAdmin() {
		return id;
	}

	public void setIdAdmin(int id) {
		this.id = id;
	}

	public String getNombreAdmin() {
		return adminNombre;
	}

	public void setNombreAdmin(String adminNombre) {
		this.adminNombre = adminNombre;
	}

	public String getApellidoAdmin() {
		return adminApellido;
	}

	public void setApellidoAdmin(String adminApellido) {
		this.adminApellido = adminApellido;
	}
	
	
}
