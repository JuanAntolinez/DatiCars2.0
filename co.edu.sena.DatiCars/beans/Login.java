package beans;

public class Login {
	
	
	private int id;
	private String usuario;
	private String nombre;
	private String apellido;
	private String email;
	private String contrasena;
	private String rol;
	
	public Login(int id, String usuario, String nombre, String apellido, String email, String contrasena, String rol) {
		super();
		
		this.id = id;
		this.usuario = usuario;
		this.nombre = nombre;
		this.apellido = apellido;
		this.email = email;
		this.contrasena = contrasena;
	
	    }
		
	public Login() {
		super();
		}
		
		
		public int getIdLogin() {
			return id;
		}
		
		public void setIdLogin(int id) {
			this.id = id;
		}
		
		public String getUsuario() {
			return usuario;
		}
		
		public void setUsuario(String usuario) {
			this.usuario = usuario;
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
		
		public String getEmail() {
			return email;
		}
		
		public void setEmail(String email) {
			this.email = email;
		}
		
		public String getContrasena() {
			return contrasena;
		}
		
		public void setContrasena(String contrasena) {
			this.contrasena = contrasena;
		}
		
		public String getRol() {
			return rol;
		}
		
		public void setRol(String rol) {
			this.rol = rol;
		}


}
