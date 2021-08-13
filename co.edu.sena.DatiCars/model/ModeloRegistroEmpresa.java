package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import connection.Conexion;
import com.mysql.jdbc.Blob;
import beans.EmpresaRegistro;



public class ModeloRegistroEmpresa {
	
	public ModeloRegistroEmpresa () {}
	public boolean RegistrateEmpresa(String nombreEmpresa, String nombreContacto, String camaradeComercio, String direccion, String telefono, String horarioAtencion, String producto, String fotoLocal, String email) {
	
	
				Connection cn = null;
				PreparedStatement pstm = null;
				ResultSet rs = null;
				boolean registroempresa = false;
				
				
				
				try {
					cn = Conexion.getConexion();
					String sql = "insert into Empresas (nombreEmpresa, nombreContacto , camaradeComercio , direccion, telefono , horarioAtencion, producto, fotoLocal ,email ) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
					pstm = cn.prepareStatement(sql);
					pstm.setString(1, nombreEmpresa);
					pstm.setString(2, nombreContacto);
					pstm.setString(3, camaradeComercio);
					pstm.setString(4, direccion);
					pstm.setString(5, telefono);
					pstm.setString(6, horarioAtencion);
					pstm.setString(7, producto);
					pstm.setString(8, fotoLocal);
					pstm.setString(9, email);
				
					
					registroempresa = pstm.executeUpdate() > 0;		
		
		     
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
				
				return registroempresa;
		}
		
}
	


