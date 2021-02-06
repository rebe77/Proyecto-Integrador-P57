package MODEL;
import java.sql.*;
import CONEXION.Conexion;
public class dim_parametros_medicion {
	private int sk_parametros_medicion;
	private int pk_id_parametro;
	private String parametro;
	private String unidad_medida;
	private Date valido_desde;
	private Date valido_hasta;
	private double version;
	
	public dim_parametros_medicion(int sk_parametros_medicion, String parametro, String unidad_medida, double version) {
		super();
		this.sk_parametros_medicion = sk_parametros_medicion;
		this.parametro = parametro;
		this.unidad_medida = unidad_medida;
		this.version = version;
	}
	public dim_parametros_medicion() {
		super();
	}

	public int getSk_parametros_medicion() {
		return sk_parametros_medicion;
	}
	public int getPk_id_parametro() {
		return pk_id_parametro;
	}
	public String getParametro() {
		return parametro;
	}
	public String getUnidad_medida() {
		return unidad_medida;
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
	public void setSk_parametros_medicion(int sk_parametros_medicion) {
		this.sk_parametros_medicion = sk_parametros_medicion;
	}
	public void setPk_id_parametro(int pk_id_parametro) {
		this.pk_id_parametro = pk_id_parametro;
	}
	public void setParametro(String parametro) {
		this.parametro = parametro;
	}
	public void setUnidad_medida(String unidad_medida) {
		this.unidad_medida = unidad_medida;
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
		return "dim_parametros_medicion [sk_parametros_medicion=" + sk_parametros_medicion + ", pk_id_parametro="
				+ pk_id_parametro + ", parametro=" + parametro + ", unidad_medida=" + unidad_medida + ", valido_desde="
				+ valido_desde + ", valido_hasta=" + valido_hasta + ", version=" + version + "]";
	}
	
	public String verParametros(){
		String sql = "SELECT * FROM dim_parametros_medicion ORDER BY sk_parametros_medicion";
		Conexion con = new Conexion();
		String tabla = "<table border=2> <th>sk_parametros_medicion</th> <th>pk_id_parametro</th> <th>parametro</th> <th>unidad_medida</th> <th>valido desde</th> <th>valido hasta</th> <th>version</th>";
		ResultSet rs = null;
		rs = con.Consulta(sql);
		try {
			while (rs.next()){
				tabla += "<tr>"
						   + "<td>" + rs.getInt(1) + "</td>"
						   + "<td>" + rs.getInt(2) + "</td>" 
						   + "<td>" + rs.getString(3) + "</td>" 
						   + "<td>" + rs.getString(4) + "</td>" 
		                   + "<td>" + rs.getDate(5) + "</td>"
		                   + "<td>" + rs.getDate(6) + "</td>"
		                   + "<td>" + rs.getDouble(7) + "</td>"
						   + "<td> <a target=_blank href= verParametrosUpdate.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"							
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
	
	public boolean UpdateParametros(dim_parametros_medicion mp) {
		boolean agregado = false;
		Conexion obj = new Conexion();
		String sql = "UPDATE dim_parametros_medicion SET parametro = '"+mp.getParametro()+"'," + 
												    "unidad_medida = '"+mp.getUnidad_medida()+"'," + 
										   	              "version = '"+mp.getVersion()+"'" + 
		     "where dim_parametros_medicion.sk_parametros_medicion = '"+mp.getSk_parametros_medicion()+"'";
		try { 
			obj.Ejecutar(sql);
			agregado = true;
		} catch (Exception e) {
			agregado = false;
		}
		return agregado;
	}
	
	/*	
	
	
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
	}*/
	
}