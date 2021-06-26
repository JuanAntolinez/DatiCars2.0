package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import beans.actualizarContrase�a;

import connection.Conexion;

public class ModeloActualizarContrase�a {
	public  ModeloActualizarContrase�a() {}
	public boolean actualizar(String contrase�a) {

	

		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean actualizarContrase�a = false;
		
		try {
			cn = Conexion.getConexion();
			
			String sql = " UPDATE Usuarios  SET contrase�a=?  WHERE id=?";   
			
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, contrase�a);
		;
			
			actualizarContrase�a = pstm.executeUpdate() > 0;
			
							
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
		
		return actualizarContrase�a;
	}
}

