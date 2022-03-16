<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="source.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Instalaciones Polideportivas</title>
</head>
<body>

	<%
	Polideportivo poli1 = new Polideportivo(7, 15, 50, 20, "Deportivo 1");
	Polideportivo poli2 = new Polideportivo(12, 20, 100, 15, "Deportes Honduras");
	Polideportivo poli3 = new Polideportivo(25, 30, 230, 45, "Gimnasio Judo");
	
	poli1.getTipoInstalacion("Techado");
	poli2.getTipoInstalacion("Abierto");
	
	ArrayList<Polideportivo> listaPolideportivos = new ArrayList<Polideportivo>();
	
	listaPolideportivos.add(poli1);
	listaPolideportivos.add(poli2);
	listaPolideportivos.add(poli3);
	%>
		<%
		for (int i = 0; i < listaPolideportivos.size(); i++) {
			out.print("Nombre Edificio: "+listaPolideportivos.get(i).getNombrePolideportivo()+"\n");
			out.print("Numero Oficinas: "+listaPolideportivos.get(i).getNumeroOficinas());
		}
		%>
	

</body>
</html>