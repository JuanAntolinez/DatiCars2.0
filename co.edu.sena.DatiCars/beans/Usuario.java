package beans;

public class Usuario {
	private int id;
	private String usuario;
	private String email;
	private String contraseña;
	private String nombre;
	private String apellido;
	private String permisos;
	
	
	public Usuario(int id, String usuario, String email, String contraseña, String nombre, String apellido, String permisos) {
		super();
		this.id = id;
		this.usuario = usuario;
		this.email = email;
		this.contraseña = contraseña;
		this.nombre = nombre;
		this.apellido = apellido;
		this.permisos = permisos;
	}
	
	
	public Usuario() {
		super();
	}


	public Usuario(String usuario, String email, String contraseña, String nombre, String apellido ,  String permisos) {
		super();
		this.usuario = usuario;
		this.email = email;
		this.contraseña = contraseña;
		this.nombre = nombre;
		this.apellido = apellido;
		this.permisos = permisos;
	}


	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public int getIdUsuario() {
		return id;
	}

	public void setIdUsuario(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContraseña() {
		return contraseña;
	}

	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	
	public String getPermisos() {
		return permisos;
	}

	public void setPermisos(String permisos) {
		this.permisos = permisos;
	}

}