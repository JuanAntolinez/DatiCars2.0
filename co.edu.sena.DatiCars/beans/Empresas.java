package beans;

public class Empresas {

	private int id;
	private String nombreEmpresa;
	private String nombreContacto;
	private String camaradeComercio;
	private String direccion;
	private String telefono;
	private String horarioAtencion;
	private String producto;
	private String fotoLocal;
	private String email;
	
	
	public Empresas(int id, String nombreEmpresa, String nombreContacto, String camaradeComercio, String direccion, String telefono, String horarioAtencion,String producto, String fotoLocal, String email) {
		super();
		this.id = id;
		this.nombreEmpresa = nombreEmpresa;
		this.nombreContacto = nombreContacto;
		this.camaradeComercio = camaradeComercio;
		this.direccion = direccion;
		this.telefono = telefono;
		this.horarioAtencion = horarioAtencion;
		this.producto = producto;
		this.fotoLocal = fotoLocal;
		this.email = email;
	}
	
	
	public Empresas() {
		super();
	}

	public int getIdEmpresa() {
		return id;
	}

	public void setIdEmpresa(int id) {
		this.id = id;
	}


	public String getNombreEmpresa() {
		return nombreEmpresa;
	}

	public void setNombreEmpresa(String nombreEmpresa) {
		this.nombreEmpresa = nombreEmpresa;
	}



	public String getNombreContacto() {
		return nombreContacto;
	}

	public void setNombreContacto(String nombreContacto) {
		this.nombreContacto = nombreContacto;
	}

	public String getCamaradeComercio() {
		return camaradeComercio;
	}

	public void setCamaradeComercio(String camaradeComercio) {
		this.camaradeComercio = camaradeComercio;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getHorarioAtencion() {
		return horarioAtencion;
	}

	public void setHorarioAtencion(String horarioAtencion) {
		this.horarioAtencion = horarioAtencion;
	}
	
	public String getProducto() {
		return producto;
	}

	public void setProducto(String producto) {
		this.producto = producto;
	}
	
	public String getFotoLocal() {
		return fotoLocal;
	}

	public void setFotoLocal(String fotoLocal) {
		this.fotoLocal = fotoLocal;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	

}
