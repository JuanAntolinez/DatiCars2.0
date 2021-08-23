package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.Conexion;
import beans.Actualizar;


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
}

