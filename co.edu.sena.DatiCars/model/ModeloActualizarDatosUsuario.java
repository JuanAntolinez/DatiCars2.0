package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.Conexion;
import beans.Actualizar;

// actualizar datos usuario desde el perfil del usuario

public class ModeloActualizarDatosUsuario {
	public ModeloActualizarDatosUsuario () {}
	public boolean Guardar(String email,int id) {

	

		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean actualizousuario = false;
		
		try {
			cn = Conexion.getConexion();
			
			String sql = " UPDATE Usuarios  SET  email=?  WHERE id=?";   
			
			pstm = cn.prepareStatement(sql);
			
			pstm.setString(1, email);
			pstm.setInt(2, id);
			
			actualizousuario = pstm.executeUpdate() > 0;
			
							
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
		
		return actualizousuario;
	}
	
	
	
public boolean actualizarCodigoUsuario(String email, String codigo) {

		

		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean actualizousuario = false;
		
		try {
			cn = Conexion.getConexion();
			
			String sql = " UPDATE Usuarios  SET  codigo=?  WHERE email=?";   
			
			pstm = cn.prepareStatement(sql);
			
			pstm.setString(1, codigo);
			pstm.setString(2, email);
			
			actualizousuario = pstm.executeUpdate() > 0;
			
							
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
		
		return actualizousuario;
	}


	
	//actualizar datos usuario desde pagina administrador
	
	
	
	public boolean guardarDatosUsuarioAdmin(String usuario, String nombre, String apellido,  String email, int id) {

	

		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean actualizousuarioadmin = false;
		
		try {
			cn = Conexion.getConexion();
			
			String sql = " UPDATE Usuarios  SET usuario=?, nombre=?, apellido=?, email=?  WHERE id=?";   
			
			pstm = cn.prepareStatement(sql);
			
			pstm.setString(1, usuario);
			pstm.setString(2, nombre);
			pstm.setString(3, apellido);
			pstm.setString(4, email);
			pstm.setInt(5, id);
			
			actualizousuarioadmin = pstm.executeUpdate() > 0;
			
							
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
		
		return actualizousuarioadmin;
	}
	
	
	
}	
	
	
	
	
	
	
	

