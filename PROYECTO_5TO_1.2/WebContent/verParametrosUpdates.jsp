<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="MODEL.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<%			
		int sk_parametros_medicion = Integer.parseInt(request.getParameter("sk_parametros_medicion"));
		String parametro = request.getParameter("parametro");
		String unidad_medida = request.getParameter("unidad_medida");
		double version = Double.parseDouble(request.getParameter("version"));
		
		dim_parametros_medicion mp = new dim_parametros_medicion(sk_parametros_medicion, parametro, unidad_medida, version);
		
		boolean modify = mp.UpdateParametros(mp);
		
		if(modify == true)
			 response.sendRedirect("menu.jsp");
		else
			out.print("Error!!!");
	%>
</body>
</html>