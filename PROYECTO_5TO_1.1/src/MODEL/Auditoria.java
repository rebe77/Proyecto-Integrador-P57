package MODEL;
import java.sql.*;
import CONEXION.Conexion;
public class Auditoria {
	private int id_aud;
	private String tabla_aud;
	private String operacion_aud;
	private String valoranterior_aud;
	private String valornuevo_aud;
	private Date fecha;
	private String usuario_aud;
	private String esquema_aud;
	private boolean activar_aud; 
	private boolean trigger_aud;
	public int getId_aud() {
		return id_aud;
	}
	public String getTabla_aud() {
		return tabla_aud;
	}
	public String getOperacion_aud() {
		return operacion_aud;
	}
	public String getValoranterior_aud() {
		return valoranterior_aud;
	}
	public String getValornuevo_aud() {
		return valornuevo_aud;
	}
	public Date getFecha() {
		return fecha;
	}
	public String getUsuario_aud() {
		return usuario_aud;
	}
	public String getEsquema_aud() {
		return esquema_aud;
	}
	public boolean isActivar_aud() {
		return activar_aud;
	}
	public boolean isTrigger_aud() {
		return trigger_aud;
	}
	public void setId_aud(int id_aud) {
		this.id_aud = id_aud;
	}
	public void setTabla_aud(String tabla_aud) {
		this.tabla_aud = tabla_aud;
	}
	public void setOperacion_aud(String operacion_aud) {
		this.operacion_aud = operacion_aud;
	}
	public void setValoranterior_aud(String valoranterior_aud) {
		this.valoranterior_aud = valoranterior_aud;
	}
	public void setValornuevo_aud(String valornuevo_aud) {
		this.valornuevo_aud = valornuevo_aud;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public void setUsuario_aud(String usuario_aud) {
		this.usuario_aud = usuario_aud;
	}
	public void setEsquema_aud(String esquema_aud) {
		this.esquema_aud = esquema_aud;
	}
	public void setActivar_aud(boolean activar_aud) {
		this.activar_aud = activar_aud;
	}
	public void setTrigger_aud(boolean trigger_aud) {
		this.trigger_aud = trigger_aud;
	}
	@Override
	public String toString() {
		return "Auditoria [id_aud=" + id_aud + ", tabla_aud=" + tabla_aud + ", operacion_aud=" + operacion_aud
				+ ", valoranterior_aud=" + valoranterior_aud + ", valornuevo_aud=" + valornuevo_aud + ", fecha=" + fecha
				+ ", usuario_aud=" + usuario_aud + ", esquema_aud=" + esquema_aud + ", activar_aud=" + activar_aud
				+ ", trigger_aud=" + trigger_aud + "]";
	}
	
	public String verAuditoria(){
		String sql = "SELECT * FROM auditoria.tb_auditoria";
		Conexion con = new Conexion();
		String tabla = "<table border=2> <th>id_aud</th> <th>tabla_aud</th> <th>operacion_aud</th> <th>valoranterior_aud</th> <th>valor_nuevo_aud</th> <th>fecha_aud</th> <th>usuario_aud</th>";
		ResultSet rs = null;
		rs = con.Consulta(sql);
		try {
			while (rs.next()){
				tabla += "<tr>"
						   + "<td>" + rs.getInt(1) + "</td>"
						   + "<td>" + rs.getString(2) + "</td>"
						   + "<td>" + rs.getString(3) + "</td>"
						   + "<td>" + rs.getString(4) + "</td>" 
						   + "<td>" + rs.getString(5) + "</td>"
						   + "<td>" + rs.getDate(6) + "</td>"
						   + "<td>" + rs.getString(7) + "</td>" + "</td></tr>";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla += "</table>";
		return tabla;
	}
}