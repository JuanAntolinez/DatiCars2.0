package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import connection.Conexion;
import beans.Usuario;

public class ModeloUsuario {	
	public Usuario iniciarSesion(String email, String contrase�a) {
		Usuario usuario = null;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try {
			cn = Conexion.getConexion();
			String sql = "SELECT U.id, U.usuario, U.email, U.contrase�a,U.nombre,U.apellido FROM Usuarios U WHERE U.email = ? AND  U.contrase�a = ?";
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, email);
			pstm.setString(2, contrase�a);
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				usuario = new Usuario();
				usuario.setIdUsuario(rs.getInt("id"));
				usuario.setEmail(rs.getString("email"));
				usuario.setContrase�a(rs.getString("contrase�a"));
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
