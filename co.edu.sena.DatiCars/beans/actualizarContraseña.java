package beans;

public class actualizarContraseña {

	private int id;
	private String usuario;
	private String nombre;
	private String apellido;
	private String email;
	private String contrasena;
	private String permisos;
	
	public actualizarContraseña(int id, String usuario, String email, String contrasena, String nombre, String apellido, String permisos) {
		super();
		this.id = id;
		this.usuario = usuario;
		this.email = email;
		this.contrasena = contrasena;
		this.nombre = nombre;
		this.apellido = apellido;
		this.permisos = permisos;
	}
	
	
	public actualizarContraseña() {
		super();
	}


	public actualizarContraseña(String usuario, String email, String contrasena, String nombre, String apellido, String permisos) {
		super();
		this.usuario = usuario;
		this.email = email;
		this.contrasena = contrasena;
		this.nombre = nombre;
		this.apellido = apellido;
		this.permisos = permisos;
	}
	
	public int getIdUsuario() {
		return id;
	}

	public void setIdUsuario(int id) {
		this.id = id;
	}
	
	public String getusuario() {
		return usuario;
	}

	public void setusuario(String usuario) {
		this.usuario = usuario;
	}
	
	public String getnombre() {
		return nombre;
	}

	public void setnombre(String nombre) {
		this.nombre = nombre;
	}
	
	public String getapellido() {
		return apellido;
	}

	public void setapellido(String apellido) {
		this.apellido = apellido;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	

	public String getContrasena() {
		return contrasena;
	}

	public void setContrasena(String  contrasena) {
		this.contrasena = contrasena;
	}
	
	public String getPermisos() {
		return permisos;
	}

	public void setPermisos(String permisos) {
		this.permisos = permisos;
	}
	
}


