package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.Conexion;
import beans.UsuarioRegistro;


public class ModeloRegistroUsuario {
	public ModeloRegistroUsuario () {}
	public boolean Registrate(String user,String nombre,String apellido,String email, String contraseña, String permisos) {

	
			
		//UsuarioRegistro usuario = null;//
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean registrousuario = false;
		
		try {
			cn = Conexion.getConexion();
			String sql = "insert into Usuarios (usuario, nombre , apellido , email , contraseña, permisos) values ( ?, ? , ?, ?, ?, ?)";
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, user);
			pstm.setString(2, nombre);
			pstm.setString(3, apellido);
			pstm.setString(4, email);
			pstm.setString(5, contraseña);
			pstm.setString(6, permisos);
			registrousuario = pstm.executeUpdate() > 0;
			
							
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
		
		return registrousuario;
	}
}
