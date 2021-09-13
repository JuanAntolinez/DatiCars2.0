package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.Conexion;
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
	
	
	//completo

	
	
	
	
	
		
			public EmpresaRegistro obtenerUsuario(int id) {
				EmpresaRegistro empresa = null;
				Connection cn = null;
				PreparedStatement pstm = null;
				ResultSet rs = null;
				
				try {
					cn = Conexion.getConexion();
					String sql = "SELECT U.id, U.nombreEmpresa, U.nombreContacto, U.camaradeComercio, U.direccion, U.telefono, U.horarioAtencion, U.producto, U.fotoLocal, U.email FROM Empresas U WHERE U.id=? "  ;
					pstm = cn.prepareStatement(sql);
					pstm.setInt(1, id);
					
					rs = pstm.executeQuery();
					
					while (rs.next()) {
						empresa = new EmpresaRegistro();
						
						empresa.setnombreEmpresa(rs.getString("nombreEmpresa"));
						empresa.setnombreContacto(rs.getString("nombreContacto"));
						empresa.setcamaradeComercio(rs.getString("camaradeComercio"));
						empresa.setdireccion(rs.getString("direccion"));
						empresa.settelefono(rs.getString("telefono"));
						empresa.sethorarioAtencion(rs.getString("horarioAtencion"));
						empresa.setproducto(rs.getString("producto"));
						empresa.setfotoLocal(rs.getString("fotoLocal"));
						empresa.setemail(rs.getString("email"));
						empresa.setIdEmpresa(rs.getInt("id"));
					
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
				
				return empresa;
			}

	
			
	
	
	
		
}
	


