<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="valida.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Livro</title>
</head>
<body>
<h1>Cadastro de Livro</h1>
<form  action="cadLivroJB.jsp" method="post">
<table>
		<tr>
			<td>Código:</td>
			<td><input type="text" name="codigo" size="20"/></td>
		</tr>
		<tr>
			<td>Título:</td>
			<td><input type="text" name="titulo" size="20"/></td>
		</tr>
		<tr>
			<td>Autor:</td>
			<td><input type="text" name="autor" size="20"/></td>
		</tr>
		<tr>
			<td>Data Publicação:</td>
			<td><input type="text" name="data" size="20"/></td>
		</tr>
		<tr>
			<td>Preço:</td>
			<td><input type="text" name="preco" size="20"/></td>
		</tr>
		<tr>
			<td></td>		
			<td colspan="2"><input type="submit" value="Enviar"/></td>
		</tr>
</table>
</form>	
</body>
</html>