<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="MODEL.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<%			
		int sk_criterios_calidad = Integer.parseInt(request.getParameter("sk_criterios_calidad"));
		String criterio = request.getParameter("criterio");
		String descripcion = request.getParameter("descripcion");
		String valor_inicial = request.getParameter("valor_inicial");
		double valor_final = Double.parseDouble(request.getParameter("valor_final"));
		double version = Double.parseDouble(request.getParameter("version"));
		dim_criterios_calidad mp = new dim_criterios_calidad(sk_criterios_calidad, criterio, descripcion, valor_inicial, valor_final, version);
		
		boolean modify = mp.UpdateCriterios(mp);
		
		if(modify == true)
			 response.sendRedirect("menu.jsp");
		else
			out.print("Error!!!");
	%>
</body>
</html>