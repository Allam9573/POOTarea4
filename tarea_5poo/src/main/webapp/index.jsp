<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="modelos.* "%>
<%@ page import="java.util.*"%>
<%@ page import="dao.*"%>
<html>
<body>
	<h2>Hello World!</h2>

	<%
ClienteDAO cDAO = new ClienteDAO();
ArrayList<Cliente> clientes = cDAO.listarClientes();
%>
	<table>
		<tr>
			<th>Nombre</th>
			<th>Apellido</th>
		</tr>
		<%
		for (Cliente c : clientes) {
			out.print("<tr><td>" + c.getNombre() + "</td></tr>");
		}
		%>

	</table>
</body>
</html>
