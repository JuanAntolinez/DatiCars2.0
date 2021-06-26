package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import beans.actualizarContraseña;

import connection.Conexion;

public class ModeloActualizarContraseña {
	public  ModeloActualizarContraseña() {}
	public boolean actualizar(String contraseña) {

	

		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean actualizarContraseña = false;
		
		try {
			cn = Conexion.getConexion();
			
			String sql = " UPDATE Usuarios  SET contraseña=?  WHERE id=?";   
			
			pstm = cn.prepareStatement(sql);
			pstm.setString(1, contraseña);
		;
			
			actualizarContraseña = pstm.executeUpdate() > 0;
			
							
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
		
		return actualizarContraseña;
	}
}

