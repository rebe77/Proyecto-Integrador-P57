package MODEL;
import java.sql.*;
import CONEXION.Conexion;
public class dim_criterios_calidad {
	private int sk_criterios_calidad;
	private int pk_id_criterios;
	private String pk_id_tipo_criterio;
	private String criterio;
	private String descripcion;
	private String valor_inicial;
	private double valor_final;
	private Date valido_desde;
	private Date valido_hasta;
	private double version;
	
	public dim_criterios_calidad(int sk_criterios_calidad, String criterio, String descripcion, String valor_inicial,
			double valor_final, double version) {
		super();
		this.sk_criterios_calidad = sk_criterios_calidad;
		this.criterio = criterio;
		this.descripcion = descripcion;
		this.valor_inicial = valor_inicial;
		this.valor_final = valor_final;
		this.version = version;
	}
	public dim_criterios_calidad() {
		super();
	}
	
	public int getSk_criterios_calidad() {
		return sk_criterios_calidad;
	}
	public int getPk_id_criterios() {
		return pk_id_criterios;
	}
	public String getPk_id_tipo_criterio() {
		return pk_id_tipo_criterio;
	}
	public String getCriterio() {
		return criterio;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public String getValor_inicial() {
		return valor_inicial;
	}
	public double getValor_final() {
		return valor_final;
	}
	public Date getValido_desde() {
		return valido_desde;
	}
	public Date getValido_hasta() {
		return valido_hasta;
	}
	public double getVersion() {
		return version;
	}
	public void setSk_criterios_calidad(int sk_criterios_calidad) {
		this.sk_criterios_calidad = sk_criterios_calidad;
	}
	public void setPk_id_criterios(int pk_id_criterios) {
		this.pk_id_criterios = pk_id_criterios;
	}
	public void setPk_id_tipo_criterio(String pk_id_tipo_criterio) {
		this.pk_id_tipo_criterio = pk_id_tipo_criterio;
	}
	public void setCriterio(String criterio) {
		this.criterio = criterio;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public void setValor_inicial(String valor_inicial) {
		this.valor_inicial = valor_inicial;
	}
	public void setValor_final(double valor_final) {
		this.valor_final = valor_final;
	}
	public void setValido_desde(Date valido_desde) {
		this.valido_desde = valido_desde;
	}
	public void setValido_hasta(Date valido_hasta) {
		this.valido_hasta = valido_hasta;
	}
	public void setVersion(double version) {
		this.version = version;
	}
	@Override
	public String toString() {
		return "dim_criterios_calidad [sk_criterios_calidad=" + sk_criterios_calidad + ", pk_id_criterios="
				+ pk_id_criterios + ", pk_id_tipo_criterio=" + pk_id_tipo_criterio + ", criterio=" + criterio
				+ ", descripcion=" + descripcion + ", valor_inicial=" + valor_inicial + ", valor_final=" + valor_final
				+ ", valido_desde=" + valido_desde + ", valido_hasta=" + valido_hasta + ", version=" + version + "]";
	}
	
	public String verCriterios(){
		String sql = "SELECT * FROM dim_criterios_calidad ORDER BY sk_criterios_calidad";
		Conexion con = new Conexion();
		String tabla = "<table border=2> <th>sk_criterios_calidad</th> <th>pk_id_criterio</th> <th>pk_id_tipo_criterio</th> <th>criterio</th> <th>descripcion</th> <th>valor inicial</th> <th>valor final</th> <th>valido desde</th> <th>valido hasta</th> <th>version</th>";
		ResultSet rs = null;
		rs = con.Consulta(sql);
		try {
			while (rs.next()){
				tabla += "<tr>"
						   + "<td>" + rs.getInt(1) + "</td>"
						   + "<td>" + rs.getInt(2) + "</td>" 
						   + "<td>" + rs.getString(3) + "</td>" 
						   + "<td>" + rs.getString(4) + "</td>" 
						   + "<td>" + rs.getString(5) + "</td>"
						   + "<td>" + rs.getString(6) + "</td>"
						   + "<td>" + rs.getDouble(7) + "</td>"
		                   + "<td>" + rs.getDate(8) + "</td>"
		                   + "<td>" + rs.getDate(9) + "</td>"
		                   + "<td>" + rs.getDouble(10) + "</td>"
						   + "<td> <a target=_blank href= verCriteriosUpdate.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"							
						   + "<td> <a target=_blank href= resources/pg/Delete.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"textalign: center\">Eliminar</pre></a></td>"
						   + "</tr>";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla += "</table>";
		return tabla;
	}
	
	public boolean UpdateCriterios(dim_criterios_calidad mp) {
		boolean agregado = false;
		Conexion obj = new Conexion();
		String sql = "UPDATE dim_criterios_calidad SET criterio = '"+mp.getCriterio()+"'," + 
												   "descripcion = '"+mp.getDescripcion()+"'," + 
											     "valor_inicial = '"+mp.getValor_inicial()+"'," + 
											       "valor_final = '"+mp.getValor_final()+"'," + 
										   	           "version = '"+mp.getVersion()+"'" + 
			  "where dim_criterios_calidad.sk_criterios_calidad = '"+mp.getSk_criterios_calidad()+"'";
		try { 
			obj.Ejecutar(sql);
			agregado = true;
		} catch (Exception e) {
			agregado = false;
		}
		return agregado;
	}	
	
	public boolean DeleteCanasta(int id_canasta) {
		boolean flag = false;
		Conexion con = new Conexion();
		String sql = "delete from CANASTA where id_canasta='" + id_canasta + "'";
		try {
			con.Ejecutar(sql);
			flag = true;
			System.out.println(sql);
		} catch (Exception e) {
			flag = false;
		}
		return flag;
	}

	public int sk_criterios_calidad_inc() {
		int sk_criterios_calidad = 1;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Conexion con = new Conexion();
		try {
			ps = con.getConexion().prepareStatement("SELECT MAX(sk_criterios_calidad) FROM dim_criterios_calidad");
			rs = ps.executeQuery();
			while (rs.next()) {
				sk_criterios_calidad = rs.getInt(1) + 1;
			}
		}catch (Exception e) {
			System.out.println("Error" + e.getMessage());
		}finally{
			try {
				ps.close();
				rs.close();
				con.cerrarConexion();
			}catch (Exception e) {}
		}
		return sk_criterios_calidad;
	}
	public int pk_id_criterio_inc() {
		//int pk_id_criterio_ = 1;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Conexion con = new Conexion();
		try {
			ps = con.getConexion().prepareStatement("SELECT MAX(pk_id_criterio) FROM dim_criterios_calidad");
			rs = ps.executeQuery();
			while (rs.next()) {
				sk_criterios_calidad = rs.getInt(1) + 1;
			}
		}catch (Exception e) {
			System.out.println("Error" + e.getMessage());
		}finally{
			try {
				ps.close();
				rs.close();
				con.cerrarConexion();
			}catch (Exception e) {}
		}
		return sk_criterios_calidad;
	}
	/*
	public String mostrar_pk_id_tipo_criterio() {
		String combo = "<select name=pk_id_tipo_criterio>";
		String sql = "select DISTINCT pk_id_tipo_criterio from dim_criterios_calidad order by pk_id_tipo_criterio";
		ResultSet rs = null;
		Conexion con = new Conexion();
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				combo += "<option value=" + rs.getString(1) + ">" + rs.getString(1) + "</option>";
			}
			combo += "</select>";
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return combo;
	}
	public String mostrar_criterio() {
		String combo = "<select name=criterio>";
		String sql = "select DISTINCT criterio from dim_criterios_calidad order by criterio";
		ResultSet rs = null;
		Conexion con = new Conexion();
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				combo += "<option value=" + rs.getString(1) + ">" + rs.getString(1) + "</option>";
			}
			combo += "</select>";
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return combo;
	}
	public String mostrar_descripcion() {
		String combo = "<select name=descripcion>";
		String sql = "select DISTINCT descripcion from dim_criterios_calidad order by descripcion";
		ResultSet rs = null;
		Conexion con = new Conexion();
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				combo += "<option value=" + rs.getString(1) + ">" + rs.getString(1) + "</option>";
			}
			combo += "</select>";
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return combo;
	}
	*/
}