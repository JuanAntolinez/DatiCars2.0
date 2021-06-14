package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.Conexion;
import beans.UsuarioRegistro;


public class ModeloActualizarDatosUsuario {
	public ModeloActualizarDatosUsuario () {}
	public boolean Guardar(String id,String user,String nombre,String apellido,String email, String contraseña) {

	
			
		//UsuarioRegistro usuario = null;//
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean actualizousuario = false;
		
		try {
			cn = Conexion.getConexion();
			String sql = "UPDATE Usuarios SET usuario=? ,nombre=?, apellido=?, email=?, contraseña=? "+ "WHERE id";
			
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, user);
			pstm.setString(2, nombre);
			pstm.setString(3, apellido);
			pstm.setString(4, email);
			pstm.setString(5, contraseña);
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

