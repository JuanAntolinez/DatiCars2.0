package beans;



public class EmpresaRegistro {
	
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
	
	

	public EmpresaRegistro(int id, String nombreEmpresa, String nombreContacto, String camaradeComercio, String direccion, String telefono, String horarioAtencion, String producto, String fotoLocal, String email) {
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
	
	public EmpresaRegistro(){
		super();
	}
		
	    /*1*/
		
	    public int getIdEmpresa() {
			return id;
		}

		public void setIdEmpresa(int id) {
			this.id = id;
		}
		
		
		/*2*/
		
		 public String getnombreEmpresa() {
				return nombreEmpresa;
			}

		 public void setnombreEmpresa(String nombreEmpresa) {
				this.nombreEmpresa = nombreEmpresa;
			}
		 
		 
		 /*3*/
		 
		 public String getnombreContacto() {
				return nombreContacto;
			}

		 public void setnombreContacto(String nombreContacto) {
				this.nombreContacto = nombreContacto;
			
		    }
		 
		 /*4*/
		 
		 public String getcamaradeComercio() {
				return camaradeComercio;
			}

		 public void setcamaradeComercio(String camaradeComercio) {
				this.camaradeComercio = camaradeComercio;
			
		    }
		 
		 /*5*/
		 
		 public String getdireccion() {
				return direccion;
			}

		 public void setdireccion(String direccion) {
				this.direccion = direccion;
			
		    }
		
		 /*6*/
		 
		 public String gettelefono() {
				return telefono;
			}

		 public void settelefono(String telefono) {
				this.telefono = telefono;
			
		    }
		 
		 /*7*/
		 
		 public String gethorarioAtencion() {
				return horarioAtencion;
			}

		 public void sethorarioAtencion(String horarioAtencion) {
				this.horarioAtencion = horarioAtencion;
			
		    }
		 
		 /*8*/
		 
		 public String getproducto() {
				return producto;
			}

		 public void setproducto(String producto) {
				this.producto = producto;
			
		    }
		 
		 /*9*/
		 
		 public String getfotoLocal() {
				return fotoLocal;
			}

		 public void setfotoLocal(String fotoLocal) {
				this.fotoLocal = fotoLocal;
			
		    }
		 
		 /*10*/
		 
		 public String getemail() {
				return email;
			}

		 public void setemail(String email) {
				this.email = email;
			
		    }
		 
		 
}

