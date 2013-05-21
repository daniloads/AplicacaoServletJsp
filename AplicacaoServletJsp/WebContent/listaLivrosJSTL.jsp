<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="valida.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Livros Cadastrados</title>
</head>
<body>
	<h1>Lista de Livros Cadastrados (JSTL)</h1>
	<jsp:useBean id="livros" class="br.com.fiap.javabeans.Livros"></jsp:useBean>

	<table border="1">
		<tr>
			<td><center>Código</center></td>
			<td><center>Título</center></td>
		<c:forEach var="item" items="${livros.listaLivros }">
			<tr>
				<td> <a href='detalhes.jsp?codigo=${item.codigo}'>${item.codigo}</a></td>
				<td><c:out value="${item.titulo}"/></td>
			<tr>
		</c:forEach>
	
	</table>



</body>
</html>