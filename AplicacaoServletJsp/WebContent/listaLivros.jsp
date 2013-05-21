<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.fiap.dao.DaoLivros"%>
<%@ page import="br.com.fiap.javabeans.Livros"%>
<%@ page import="java.util.*"%>
<%@ include file="valida.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Livros</title>
</head>
<body>
	<h1>Lista de Livros Cadastrados</h1>
	<table border="1">
		<tr>
			<td>Código</td>
			<td>Título</td>
		</tr>
		
		<% 
			List<Livros> lista = new DaoLivros().listaLivros();
	
			for (Livros livro : lista) {
		%>
		<tr>
			<td><a href='detalhes.jsp?codigo='<%= livro.getCodigo()%>><%= livro.getCodigo()%></a> </td>
			<td align="left"><%= livro.getTitulo() %></td>
		</tr>
		
		<% 
			}
		%>
		
	</table>
</body>
</html>