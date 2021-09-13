package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.Conexion;

import beans.Empresas;


public class ModeloEmpresa {


	public Empresas obtenerEmpresa(int id) {
		Empresas empresa = null;
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
				empresa = new Empresas();
				
				empresa.setNombreEmpresa(rs.getString("nombreEmpresa"));
				empresa.setNombreContacto(rs.getString("nombreContacto"));
				empresa.setCamaradeComercio(rs.getString("camaradeComercio"));
				empresa.setDireccion(rs.getString("direccion"));
				empresa.setTelefono(rs.getString("telefono"));
				empresa.setHorarioAtencion(rs.getString("horarioAtencion"));
				empresa.setProducto(rs.getString("producto"));
				empresa.setFotoLocal(rs.getString("fotoLocal"));
				empresa.setEmail(rs.getString("email"));
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

	
	
	
	//actualizar datos usuario desde pagina administrador
	
	
	
		public boolean guardarDatosEmpresasAdmin(String nombreEmpresa,  String nombreContacto, String camaradeComercio,String direccion,String telefono,String horarioAtencion, String producto, String fotoLocal, String email,int id) {
			
			Connection cn = null;
			PreparedStatement pstm = null;
			ResultSet rs = null;
			
			boolean actualizoempresaadmin = false;
			try {
				cn = Conexion.getConexion();
				String sql = " UPDATE Empresas  SET nombreEmpresa=?, nombreContacto=?, camaradeComercio=?, direccion=?, telefono=?, horarioAtencion=?, producto=?, fotoLocal=?, email=?  WHERE id=?";   
				
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
				pstm.setInt(10, id);
				
				actualizoempresaadmin = pstm.executeUpdate() > 0;
				
								
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
			
			return actualizoempresaadmin;
		}
	
	
	
	
	
	
	public List<Empresas> listarEmpresas() {
		Empresas empresa = null;
		Connection cn = null;
		Statement stm = null;
        ResultSet rs = null;
        ArrayList listaEmpresa = new ArrayList();
		
		try {
			cn = Conexion.getConexion();
			String sql = "SELECT * FROM Empresas "  ;
			
			stm = cn.createStatement();
            rs = stm.executeQuery(sql);
			
			while (rs.next()) {
				empresa = new Empresas();
				empresa.setIdEmpresa(rs.getInt("id"));
				empresa.setNombreEmpresa(rs.getString("nombreEmpresa"));
				empresa.setNombreContacto(rs.getString("nombreContacto"));
				empresa.setCamaradeComercio(rs.getString("camaradeComercio"));
				empresa.setDireccion(rs.getString("direccion"));
				empresa.setTelefono(rs.getString("telefono"));
				empresa.setHorarioAtencion(rs.getString("horarioAtencion"));
				empresa.setProducto(rs.getString("producto"));
				empresa.setFotoLocal(rs.getString("fotoLocal"));
				empresa.setEmail(rs.getString("email"));
				listaEmpresa.add(empresa);
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
		
		return listaEmpresa;
	}
	
	
	
	
	
	public boolean eliminar( int id) {

		

		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		boolean eliminarEmpresa = false;
		
		try {
			cn = Conexion.getConexion();
			
			String sql = " DELETE  FROM Empresas  WHERE id=?";   
			
			pstm = cn.prepareStatement(sql);

			pstm.setInt(1, id);
		
			
		eliminarEmpresa = pstm.executeUpdate() > 0;
			
							
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
		
		return eliminarEmpresa;
	}
	
	
	
	
	
	
	
}
