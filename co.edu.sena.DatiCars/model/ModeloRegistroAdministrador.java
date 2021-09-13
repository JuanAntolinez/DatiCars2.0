package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.Conexion;
import beans.Administrador;
import beans.AdministradorRegistro;


public class ModeloRegistroAdministrador {
	
	public ModeloRegistroAdministrador () {}
	public boolean RegistrateAdministrador( String adminUsuario,  String adminNombre, String adminApellido,String adminEmail, String adminContrasena) {
	
	
				Connection cn = null;
				PreparedStatement pstm = null;
				ResultSet rs = null;
				boolean registroadministrador = false;
				
				try {
					cn = Conexion.getConexion();
					String sql = "insert into Administradores (adminUsuario, adminNombre, adminApellido , adminEmail, adminContrasena) values (?, ?, ?, ?, ?)";
					pstm = cn.prepareStatement(sql);
					pstm.setString(1, adminUsuario);
					pstm.setString(2, adminNombre);
					pstm.setString(3, adminApellido);
					pstm.setString(4, adminEmail);
					pstm.setString(5, adminContrasena);
				
					registroadministrador = pstm.executeUpdate() > 0;		
					
				     
				} catch (SQLException e) {
					System.out.print(e.getMessage());
				} finally {
					try {
						if (rs != null) {
							rs.close();
						}
						
						if (pstm != null) {
							pstm.close();
						}
						
						if (cn != null) {
							cn.close();
						}
					} catch (Exception e2) {
						e2.printStackTrace();
					}
				}
				
				return registroadministrador;
		}
	
	
	//actualizar datos usuario desde pagina administrador
	
	
	
		public boolean guardarDatosAdministradorAdmin(String adminUsuario,  String adminNombre, String adminApellido,String adminEmail, int id) {

		

			Connection cn = null;
			PreparedStatement pstm = null;
			ResultSet rs = null;
			boolean actualizoadministradoradmin = false;
			
			try {
				cn = Conexion.getConexion();
				
				String sql = " UPDATE Administradores  SET adminUsuario=?, adminNombre=?, adminApellido=?, adminEmail=?  WHERE id=?";   
				
				pstm = cn.prepareStatement(sql);
				
				pstm.setString(1, adminUsuario);
				pstm.setString(2, adminNombre);
				pstm.setString(3, adminApellido);
				pstm.setString(4, adminEmail);
				pstm.setInt(5, id);
				
				actualizoadministradoradmin = pstm.executeUpdate() > 0;
				
								
			} catch (SQLException e) {
				System.out.print(e.getMessage());
			} finally {
				try {
					if (rs != null) {
						rs.close();
					}
					
					if (pstm != null) {
						pstm.close();
					}
					
					if (cn != null) {
						cn.close();
					}
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			
			return actualizoadministradoradmin;
		}
		
		
		
	
		public AdministradorRegistro obtenerUsuario(int id) {
			AdministradorRegistro administrador = null;
			Connection cn = null;
			PreparedStatement pstm = null;
			ResultSet rs = null;
			
			try {
				cn = Conexion.getConexion();
				String sql = "SELECT U.id, U.adminUsuario, U.adminNombre, U.adminApellido,U.adminEmail FROM Administradores U WHERE U.id=? "  ;
				pstm = cn.prepareStatement(sql);
				pstm.setInt(1, id);
				
				rs = pstm.executeQuery();
				
				while (rs.next()) {
					administrador = new AdministradorRegistro();
					administrador.setIdAdmin(rs.getInt("id"));
					administrador.setUsuarioAdmin(rs.getString("adminUsuario"));
					administrador.setNombreAdmin(rs.getString("adminNombre"));
					administrador.setApellidoAdmin(rs.getString("adminApellido"));
					administrador.setEmailAdmin(rs.getString("adminEmail"));
				
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null) {
						rs.close();
					}
					
					if (pstm != null) {
						pstm.close();
					}
					
					if (cn != null) {
						cn.close();
					}
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			
			return administrador;
		}
		
		
	
		
		
		
				
}
