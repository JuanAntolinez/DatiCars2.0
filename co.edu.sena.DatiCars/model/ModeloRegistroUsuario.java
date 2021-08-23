package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.Conexion;
import beans.Usuario;
import beans.UsuarioRegistro;


public class ModeloRegistroUsuario {
	public ModeloRegistroUsuario () {}
	public boolean Registrate(String user,String nombre,String apellido,String email, String contrasena, String permisos) {

	
			
		//UsuarioRegistro usuario = null;//
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean registrousuario = false;
		
		try {
			cn = Conexion.getConexion();
			String sql = "insert into Usuarios (usuario, nombre , apellido , email , contrasena, permisos) values ( ?, ? , ?, ?, ?, ?)";
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, user);
			pstm.setString(2, nombre);
			pstm.setString(3, apellido);
			pstm.setString(4, email);
			pstm.setString(5, contrasena);
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
	
	
	public boolean validarCorreo(String email) {
		Usuario usuario = null;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean rta = false;
		
		try {
			cn = Conexion.getConexion();
			String sql = "SELECT * FROM Usuarios U WHERE U.email = ?"  ;
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, email);
			
			rs = pstm.executeQuery();
			
			if(rs.next()){

                rta = true;

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
		
		return rta;
	}
}
