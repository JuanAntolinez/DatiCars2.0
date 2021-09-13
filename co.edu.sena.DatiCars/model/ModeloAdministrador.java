package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.Conexion;
import beans.Administrador;

import beans.Usuario;



public class ModeloAdministrador {
	
		public Administrador iniciarSesionAdmin(String adminEmail, String adminContrasena) {
			Administrador administrador = null;
			Connection cn = null;
			PreparedStatement pstm = null;
			ResultSet rs = null;
			
			try {
				cn = Conexion.getConexion();
				String sql = "SELECT U.id, U.adminUsuario, U.adminEmail, U.adminContrasena, U.adminNombre, U.adminApellido, U.rol FROM Administradores U WHERE U.adminEmail = ? AND  U.adminContrasena = ?";
				pstm = cn.prepareStatement(sql);
				pstm.setString(1, adminEmail);
				pstm.setString(2, adminContrasena);
				
				rs = pstm.executeQuery();
				
				while (rs.next()) {
					administrador = new Administrador();
					administrador.setIdUsuarioAdmin(rs.getInt("id"));
					administrador.setadminEmail(rs.getString("adminEmail"));
					administrador.setadminContrasena(rs.getString("adminContrasena"));
					administrador.setNombreAdmin(rs.getString("adminNombre"));
					administrador.setApellidoAdmin(rs.getString("adminApellido"));
					administrador.setUsuarioAdmin(rs.getString("adminUsuario"));
					administrador.setRol(rs.getString("rol"));
					
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
				} catch (Exception e3) {
					e3.printStackTrace();
				}
			}
			
			return administrador;
		}
		
		
		
		public Administrador obtenerAdministrador(int id) {
			Administrador administrador = null;
			Connection cn = null;
			PreparedStatement pstm = null;
			ResultSet rs = null;
			
			try {
				cn = Conexion.getConexion();
				String sql = "SELECT U.id, U.adminUsuario, U.adminNombre, U.adminApellido, U.adminEmail, U.rol FROM Administradores U WHERE U.id=? "  ;
				pstm = cn.prepareStatement(sql);
				pstm.setInt(1, id);
				
				rs = pstm.executeQuery();
				
				while (rs.next()) {
					administrador = new Administrador();
					administrador.setIdUsuarioAdmin(rs.getInt("id"));
					administrador.setUsuarioAdmin(rs.getString("adminUsuario"));
					administrador.setNombreAdmin(rs.getString("adminNombre"));
					administrador.setApellidoAdmin(rs.getString("adminApellido"));
					administrador.setadminEmail(rs.getString("adminEmail"));
					administrador.setRol(rs.getString("rol"));
					
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
		
		
		
		
		
		
		
		public List<Administrador> listarAdministradores() {
			Administrador administrador = null;
			Connection cn = null;
			Statement stm = null;
	        ResultSet rs = null;
	        ArrayList listaAdministrador = new ArrayList();
			
			try {
				cn = Conexion.getConexion();
				String sql = "SELECT * FROM Administradores "  ;
				
				stm = cn.createStatement();
	            rs = stm.executeQuery(sql);
				
				while (rs.next()) {
					administrador = new Administrador();
					administrador.setIdUsuarioAdmin(rs.getInt("id"));
					administrador.setUsuarioAdmin(rs.getString("adminUsuario"));
					administrador.setNombreAdmin(rs.getString("adminNombre"));
					administrador.setApellidoAdmin(rs.getString("adminApellido"));
					administrador.setadminEmail(rs.getString("adminEmail"));
					administrador.setRol(rs.getString("rol"));
					listaAdministrador.add(administrador);
				}
				
				
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null) {
						rs.close();
					}
					
					if (stm != null) {
						stm.close();
					}
					
					if (cn != null) {
						cn.close();
					}
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			
			return listaAdministrador;
		}
		
		
	public boolean eliminar( int id) {

			

			Connection cn = null;
			PreparedStatement pstm = null;
			ResultSet rs = null;
			boolean eliminarUsuario = false;
			
			try {
				cn = Conexion.getConexion();
				
				String sql = " DELETE  FROM Administradores  WHERE id=?";   
				
				pstm = cn.prepareStatement(sql);

				pstm.setInt(1, id);
			;
				
			eliminarUsuario = pstm.executeUpdate() > 0;
				
								
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
			
			return eliminarUsuario;
		}
		
		
		
		
		
	}








