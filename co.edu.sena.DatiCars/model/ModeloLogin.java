package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.Conexion;
import beans.Login;



public class ModeloLogin {
	
	public Login iniciarSesion(String email, String contrasena) {
		Login usuario = null;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try {
			cn = Conexion.getConexion();
			String sql = "SELECT U.id, U.usuario, U.email, U.contrasena,U.nombre,U.apellido, U.rol FROM Login U WHERE U.email = ? AND  U.contrasena = ? "  ;
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, email);
			pstm.setString(2, contrasena);
			
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				usuario = new Login();
				usuario.setIdLogin(rs.getInt("id"));
				usuario.setUsuario(rs.getString("usuario"));
				usuario.setNombre(rs.getString("nombre"));
				usuario.setApellido(rs.getString("apellido"));
				usuario.setEmail(rs.getString("email"));
				usuario.setContrasena(rs.getString("contrasena"));
				usuario.setRol(rs.getString("rol"));
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
	
	
	public Login obtenerRol(String rol) {
		Login roles = null;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try {
			cn = Conexion.getConexion();
			String sql = "SELECT U.id, U.usuario, U.email, U.contrasena,U.nombre,U.apellido, U.rol FROM Login U WHERE U.rol=? "  ;
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, rol);
			
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				roles = new Login();
				roles.setIdLogin(rs.getInt("id"));
				roles.setEmail(rs.getString("email"));
				roles.setContrasena(rs.getString("contrasena"));
				roles.setNombre(rs.getString("nombre"));
				roles.setApellido(rs.getString("apellido"));
				roles.setUsuario(rs.getString("usuario"));
				roles.setRol(rs.getString("rol"));
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
		
		return roles;
	}
	
	

}
