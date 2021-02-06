package MODEL;
import java.sql.*;
import CONEXION.Conexion;
public class dim_rios {
	private int sk_rios;
	private int pk_id_rios;
	private String rio;
	private String ubicacion;
	private String referencia;
	private Date valido_desde;
	private Date valido_hasta;
	private double version;
	
	public dim_rios(int sk_rios, String rio, String ubicacion, String referencia, double version) {
		super();
		this.sk_rios = sk_rios;
		this.rio = rio;
		this.ubicacion = ubicacion;
		this.referencia = referencia;
		this.version = version;
	}
	
	public dim_rios() {
		super();
	}
	
	public int getSk_rios() {
		return sk_rios;
	}
	public int getPk_id_rios() {
		return pk_id_rios;
	}
	public String getRio() {
		return rio;
	}
	public String getUbicacion() {
		return ubicacion;
	}
	public String getReferencia() {
		return referencia;
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
	public void setSk_rios(int sk_rios) {
		this.sk_rios = sk_rios;
	}
	public void setPk_id_rios(int pk_id_rios) {
		this.pk_id_rios = pk_id_rios;
	}
	public void setRio(String rio) {
		this.rio = rio;
	}
	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}
	public void setReferencia(String referencia) {
		this.referencia = referencia;
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
		return "dim_rios [sk_rios=" + sk_rios + ", pk_id_rios=" + pk_id_rios + ", rio=" + rio + ", ubicacion="
				+ ubicacion + ", referencia=" + referencia + ", valido_desde=" + valido_desde + ", valido_hasta="
				+ valido_hasta + ", version=" + version + "]";
	}
	
	public String verRios(){
		String sql = "SELECT * FROM dim_rios ORDER BY sk_rios";
		Conexion con = new Conexion();
		String tabla = "<table border=2> <th>sk_rios</th> <th>pk_id_rios</th> <th>rio</th> <th>ubicacion</th> <th>referencia</th> <th>valido desde</th> <th>valido hasta</th> <th>version</th>";
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
		                   + "<td>" + rs.getDate(6) + "</td>"
		                   + "<td>" + rs.getDate(7) + "</td>"
		                   + "<td>" + rs.getDouble(8) + "</td>"
						   + "<td> <a target=_blank href= verRiosUpdate.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align: center\">Modificar</pre></a></td>"							
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
	
	public boolean UpdateRios(dim_rios mp) {
		boolean agregado = false;
		Conexion obj = new Conexion();
		String sql = "UPDATE dim_rios SET rio = '"+mp.getRio()+"'," + 
								   "ubicacion = '"+mp.getUbicacion()+"'," + 
								  "referencia = '"+mp.getReferencia()+"'," +
								     "version = '"+mp.getVersion()+"'" +
		              "where dim_rios.sk_rios = '"+mp.getSk_rios()+"'";
		try { 
			obj.Ejecutar(sql);
			agregado = true;
		} catch (Exception e) {
			agregado = false;
		}
		System.out.println("******"+sql);
		return agregado;
	}
}