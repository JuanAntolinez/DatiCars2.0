package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import connection.Conexion;
import beans.Usuario;

public class ModeloUsuario {	
	public Usuario iniciarSesion(String email, String contraseña) {
		Usuario usuario = null;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try {
			cn = Conexion.getConexion();
			String sql = "SELECT U.id, U.usuario, U.email, U.contraseña,U.nombre,U.apellido FROM Usuarios U WHERE U.email = ? AND  U.contraseña = ?";
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, email);
			pstm.setString(2, contraseña);
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				usuario = new Usuario();
				usuario.setIdUsuario(rs.getInt("id"));
				usuario.setEmail(rs.getString("email"));
				usuario.setContraseña(rs.getString("contraseña"));
				usuario.setNombre(rs.getString("nombre"));
				usuario.setApellido(rs.getString("apellido"));
				usuario.setUsuario(rs.getString("usuario"));
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
		
		return usuario;
	}
}
