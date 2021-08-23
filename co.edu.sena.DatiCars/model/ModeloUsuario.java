package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import connection.Conexion;
import beans.Usuario;

public class ModeloUsuario {	
	public Usuario iniciarSesion(String email, String contrasena) {
		Usuario usuario = null;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try {
			cn = Conexion.getConexion();
			String sql = "SELECT U.id, U.usuario, U.email, U.contrasena,U.nombre,U.apellido, U.permisos FROM Usuarios U WHERE U.email = ? AND  U.contrasena = ? "  ;
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, email);
			pstm.setString(2, contrasena);
			
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				usuario = new Usuario();
				usuario.setIdUsuario(rs.getInt("id"));
				usuario.setEmail(rs.getString("email"));
				usuario.setContrasena(rs.getString("contrasena"));
				usuario.setNombre(rs.getString("nombre"));
				usuario.setApellido(rs.getString("apellido"));
				usuario.setUsuario(rs.getString("usuario"));
				usuario.setPermisos(rs.getString("permisos"));
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
