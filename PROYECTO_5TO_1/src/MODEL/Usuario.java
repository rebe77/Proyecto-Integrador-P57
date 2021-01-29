package MODEL;
import java.sql.*;

import CONTROLLER.Conexion;
public class Usuario {
	private String Cedula;
	private int Id_tipo;
	private String Nombres;
	private String Apellido;
	private int N_telefono;
	private String Correo;
	private String Clave;
	
	
	public Usuario(String cedula, int id_tipo, String nombres, String apellido, int n_telefono, String correo,
			String clave) {
		super();
		Cedula = cedula;
		Id_tipo = id_tipo;
		Nombres = nombres;
		Apellido = apellido;
		N_telefono = n_telefono;
		Correo = correo;
		Clave = clave;
	}
	public Usuario() {
		super();
	}

	public String getCedula() {
		return Cedula;
	}
	public int getId_tipo() {
		return Id_tipo;
	}
	public String getNombres() {
		return Nombres;
	}
	public String getApellido() {
		return Apellido;
	}
	public int getN_telefono() {
		return N_telefono;
	}
	public String getCorreo() {
		return Correo;
	}
	public String getClave() {
		return Clave;
	}
	
	public void setCedula(String cedula) {
		Cedula = cedula;
	}
	public void setId_tipo(int id_tipo) {
		Id_tipo = id_tipo;
	}
	public void setNombres(String nombres) {
		Nombres = nombres;
	}
	public void setApellido(String apellido) {
		Apellido = apellido;
	}
	public void setN_telefono(int n_telefono) {
		N_telefono = n_telefono;
	}
	public void setCorreo(String correo) {
		Correo = correo;
	}
	public void setClave(String clave) {
		Clave = clave;
	}
	
	public boolean verificarUsuario(String correo, String clave){
		boolean respuesta=false;
		String sql= "SELECT * FROM usuario.usuario WHERE correo='"+correo+"' and clave='"+clave+"'";
		System.out.print(sql);
		try{
			ResultSet rs;
			Conexion con = new Conexion();
			rs = con.Consulta(sql);
			if(rs.next()){
				respuesta=true;
				this.setCorreo(correo);
				this.setClave(clave);
				this.setId_tipo(rs.getInt(2));
				this.setNombres(rs.getString(3));
			}else{
				respuesta=false;
				rs.close();
			}
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return respuesta;
	}
	
	public String registroCliente(String cedula, String nombre, String apellido, String numero, String correo, String contraseña) {
		String result = "";
		Conexion con = new Conexion();
		PreparedStatement pr = null;
		String sql = "INSERT INTO usuario.usuario (cedula,id_per,nombres,apellido,numero_telefono,correo,clave) VALUES (?,?,?,?,?,?,?)";
		try {
			pr = con.getConexion().prepareStatement(sql);
			pr.setString(1, cedula);
			pr.setInt(2, 2); //4 cliente
			pr.setString(3, nombre);
			pr.setString(4, apellido);
			pr.setString(5, numero);
			pr.setString(6, correo);
			pr.setString(7, contraseña);
			if (pr.executeUpdate() == 1){
				result = "<a href=\"index.jsp\">  Insercion Correcta</a>";
			}
			else
				result = "Error en insercion";
		} 
		catch (Exception ex) { 
			result = ex.getMessage();
		}finally{
			try{
				pr.close();
				con.getConexion().close();
			}catch (Exception ex) {
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	
	public String registroEmpleado(String cedula, String nombre, String apellido, String numero, String correo, String contraseña) {
		String result = "";
		Conexion con = new Conexion();
		PreparedStatement pr = null;
		String sql = "INSERT INTO usuario.usuario (cedula,id_per,nombres,apellido,numero_telefono,correo,clave) VALUES (?,?,?,?,?,?,?)";
		try {
			pr = con.getConexion().prepareStatement(sql);
			pr.setString(1, cedula);
			pr.setInt(2, 3);
			pr.setString(3, nombre);
			pr.setString(4, apellido);
			pr.setString(5, numero);
			pr.setString(6, correo);
			pr.setString(7, contraseña);
			if (pr.executeUpdate() == 1){
				result = "<a href=\"menu.jsp\">  Insercion Correcta</a>";
			}
			else
				result = "Error en insercion";
		} 
		catch (Exception ex) { 
			result = ex.getMessage();
		}finally{
			try{
				pr.close();
				con.getConexion().close();
			}catch (Exception ex) {
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	
	public String mostrarMenu(int nperfil) {
		String menu = "<ul>";
		String sql = "SELECT * FROM usuario.tb_pagina pag, usuario.tb_perfil per, usuario.tb_pagper pper WHERE pag.id_pag=pper.id_pag AND pper.id_per=per.id_per AND pper.id_per= " + nperfil;
		Conexion con = new Conexion();
		ResultSet rs = null;
		try {
			rs = con.Consulta(sql);
			while (rs.next()) {
				menu += "<li><a href=" + rs.getString(3) + " accesskey=" + rs.getInt(1) + ">" + rs.getString(2) + "</A></li>";
			}
			menu += "</ul>";
		}catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		return menu;
	}
	
	public boolean ModificarContraseña(String nombre, String clave) {
		boolean agregado = false;
		Conexion obj = new Conexion();
		String sql = "UPDATE usuario.usuario SET clave='"+clave+"' where nombres = '"+nombre+"'";
		try {
			obj.Ejecutar(sql);
			agregado = true;
		} catch (Exception e) {
			agregado = false;
		}
		return agregado;
	}
}