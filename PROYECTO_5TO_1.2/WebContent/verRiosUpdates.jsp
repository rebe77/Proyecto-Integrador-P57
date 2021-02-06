<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="MODEL.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<%			
		int sk_rios = Integer.parseInt(request.getParameter("sk_rios"));
		String rio = request.getParameter("rio");
		String ubicacion = request.getParameter("ubicacion");
		String referencia = request.getParameter("referencia");
		double version = Double.parseDouble(request.getParameter("version"));
		
		dim_rios mp = new dim_rios(sk_rios, rio, ubicacion, referencia,  version);
		boolean modify = mp.UpdateRios(mp);
		
		if(modify == true)
			 response.sendRedirect("menu.jsp");
		else
			out.print("Error!!!");
	%>
</body>
</html>