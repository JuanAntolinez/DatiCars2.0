package beans;

public class Administrador {
	private int id;
	private String adminUsuario;
	private String adminEmail;
	private String adminContrasena;
	private String adminNombre;
	private String adminApellido;

	
	
	public Administrador(int id, String adminUsuario, String adminEmail, String adminContrasena, String adminNombre, String adminApellido) {
		super();
		this.id = id;
		this.adminUsuario = adminUsuario;
		this.adminEmail = adminEmail;
		this.adminContrasena = adminContrasena;
		this.adminNombre = adminNombre;
		this.adminApellido = adminApellido;

	}
	
	
	public Administrador() {
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
	

	public String getadminEmail() {
		return adminEmail;
	}

	public void setadminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	

	public String getadminContrasena() {
		return adminContrasena;
	}

	public void setadminContrasena(String adminContrasena) {
		this.adminContrasena = adminContrasena;
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



