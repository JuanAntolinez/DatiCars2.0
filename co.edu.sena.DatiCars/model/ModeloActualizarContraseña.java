package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import beans.actualizarContraseña;

import connection.Conexion;

public class ModeloActualizarContraseña {
	public  ModeloActualizarContraseña() {}
	public boolean actualizar(String contrasena , int id) {

	

		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean actualizarContrasena = false;
		
		try {
			cn = Conexion.getConexion();
			
			String sql = " UPDATE Usuarios  SET contrasena=?  WHERE id=?";   
			
			pstm = cn.prepareStatement(sql);
			
			pstm.setString(1, contrasena);
			pstm.setInt(2, id);
		;
			
			actualizarContrasena = pstm.executeUpdate() > 0;
			
							
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
		
		return actualizarContrasena;
	}
	
	public boolean recuperar(String contrasena , String codigo) {

		

		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean actualizarContrasena = false;
		
		try {
			cn = Conexion.getConexion();
			
			String sql = " UPDATE Usuarios  SET contrasena=?,codigo=''  WHERE codigo=?";   
			
			pstm = cn.prepareStatement(sql);
			
			pstm.setString(1, contrasena);
			pstm.setString(2, codigo);
		;
			
			actualizarContrasena = pstm.executeUpdate() > 0;
			
							
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
		
		return actualizarContrasena;
	}
}

