package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
			String sql = "SELECT U.id, U.usuario, U.email, U.contrasena,U.nombre,U.apellido, U.rol FROM Usuarios U WHERE U.email = ? AND  U.contrasena = ? "  ;
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
	
	public Usuario obtenerUsuario(int id) {
		Usuario usuario = null;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try {
			cn = Conexion.getConexion();
			String sql = "SELECT U.id, U.usuario, U.email, U.contrasena,U.nombre,U.apellido, U.rol FROM Usuarios U WHERE U.id=? "  ;
			pstm = cn.prepareStatement(sql);
			pstm.setInt(1, id);
			
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setEmail(rs.getString("email"));
				usuario.setContrasena(rs.getString("contrasena"));
				usuario.setNombre(rs.getString("nombre"));
				usuario.setApellido(rs.getString("apellido"));
				usuario.setUsuario(rs.getString("usuario"));
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
	
	
	public List<Usuario> listarUsuarios() {
		Usuario usuario = null;
		Connection cn = null;
		Statement stm = null;
        ResultSet rs = null;
        ArrayList listaUsuario = new ArrayList();
		
		try {
			cn = Conexion.getConexion();
			String sql = "SELECT * FROM Usuarios "  ;
			
			stm = cn.createStatement();
            rs = stm.executeQuery(sql);
			
			while (rs.next()) {
				usuario = new Usuario();
				usuario.setIdUsuario(rs.getInt("id"));
				usuario.setEmail(rs.getString("email"));
				usuario.setContrasena(rs.getString("contrasena"));
				usuario.setNombre(rs.getString("nombre"));
				usuario.setApellido(rs.getString("apellido"));
				usuario.setUsuario(rs.getString("usuario"));
				usuario.setRol(rs.getString("rol"));
				listaUsuario.add(usuario);
			}
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				
				if (stm != null) {
					stm.close();
				}
				
				if (cn != null) {
					cn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return listaUsuario;
	}
	
	
	public boolean eliminar( int id) {

		

		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean eliminarUsuario = false;
		
		try {
			cn = Conexion.getConexion();
			
			String sql = " DELETE  FROM Usuarios  WHERE id=?";   
			
			pstm = cn.prepareStatement(sql);

			pstm.setInt(1, id);
		;
			
		eliminarUsuario = pstm.executeUpdate() > 0;
			
							
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
		
		return eliminarUsuario;
	}
	
	
	//Graficas
	
	public String totalUsuarios() {
		
		Connection cn = null;
		Statement stm = null;
        ResultSet rs = null;
        String total = "";
       
		
		try {
			cn = Conexion.getConexion();
			String sql = "select COUNT(*), rol from usuarios GROUP by rol"  ;
			
			stm = cn.createStatement();
            rs = stm.executeQuery(sql);
            total = "[";
			while (rs.next()) {
				if(rs.isLast()){
					total += "{ \"label\": "+rs.getString(2)+", \"y\":"+rs.getString(1)+ "}";
				}else {
					total += "{ \"label\": "+rs.getString(2)+", \"y\":"+rs.getString(1)+ "},";
				}
				
				
			}
			total+="]";
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				
				if (stm != null) {
					stm.close();
				}
				
				if (cn != null) {
					cn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return total;
	}
	
		public String totalEmpresas() {
		
		Connection cn = null;
		Statement stm = null;
        ResultSet rs = null;
        String total = "";
       
		
		try {
			cn = Conexion.getConexion();
			String sql = "select COUNT(*), producto from empresas GROUP producto"  ;
			
			stm = cn.createStatement();
            rs = stm.executeQuery(sql);
            total = "[";
			while (rs.next()) {
				if(rs.isLast()){
					total += "{ \"label\": "+rs.getString(3)+", \"y\":"+rs.getString(1)+ "}";
				}else {
					total += "{ \"label\": "+rs.getString(3)+", \"y\":"+rs.getString(1)+ "},";
				}
				
				
			}
			total+="]";  					 

			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				
				if (stm != null) {
					stm.close();
				}
				
				if (cn != null) {
					cn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return total;

}
}
