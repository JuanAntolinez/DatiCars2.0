package beans;

public class UsuarioRegistro {
	
	private int id;
	private String usuario;
	private String nombre;
	private String apellido;
	private String email;
	private String contrase�a;
	private String permisos;
	
	public UsuarioRegistro(int id, String usuario, String email, String contrase�a, String nombre, String apellido, String permisos) {
		super();
		this.id = id;
		this.usuario = usuario;
		this.email = email;
		this.contrase�a = contrase�a;
		this.nombre = nombre;
		this.apellido = apellido;
		this.permisos = permisos;
	}
	
	
	public UsuarioRegistro() {
		super();
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
	

	public String getContrase�a() {
		return contrase�a;
	}

	public void setContrase�a(String  contrase�a) {
		this.contrase�a = contrase�a;
	}
	
	public String getPermisos() {
		return permisos;
	}

	public void setPermisos(String permisos) {
		this.permisos = permisos;
	}
	
}
