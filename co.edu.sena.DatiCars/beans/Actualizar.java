package beans;

public class Actualizar {

	
	private int id;
	private String usuario;
	private String nombre;
	private String apellido;
	private String email;
	private String contraseña;
	
	public Actualizar(int id, String usuario, String email, String contraseña, String nombre, String apellido) {
		super();
		this.id = id;
		this.usuario = usuario;
		this.email = email;
		this.contraseña = contraseña;
		this.nombre = nombre;
		this.apellido = apellido;
	}
	
	
	public Actualizar() {
		super();
	}


	public Actualizar(String usuario, String email, String contraseña, String nombre, String apellido) {
		super();
		this.usuario = usuario;
		this.email = email;
		this.contraseña = contraseña;
		this.nombre = nombre;
		this.apellido = apellido;
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
	

	public String getContraseña() {
		return contraseña;
	}

	public void setContraseña(String  contraseña) {
		this.contraseña = contraseña;
	}
}
