<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="source.*" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Instalaciones Polideportivas</title>
</head>
<body>

<%
	Polideportivo poli1 = new Polideportivo(7,15,50,20);
	Polideportivo poli2 = new Polideportivo(12,20,100,15);
	Polideportivo poli3 = new Polideportivo(25,30,230,45);
	ArrayList<Polideportivo> listaPolideportivos = new ArrayList<Polideportivo>();
	listaPolideportivos.add(poli1);
	listaPolideportivos.add(poli2);
	listaPolideportivos.add(poli3);
%>

</body>
</html>