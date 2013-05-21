<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Usuarios</title>
</head>
<body>

<c:catch var="erro">
	<jsp:useBean id="usuarios" class="br.com.fiap.javabeans.Usuarios" />

	<c:set var="user" value="${param.usuario}" />
	<c:set var="pwd" value="${param.senha}"  />
	<c:set var="nivel" value="${param.nivel}" />

	<jsp:setProperty property="usuario" name="usuarios" value="${user}"/>
	<jsp:setProperty property="senha" name="usuarios" value="${pwd}"/>
	<jsp:setProperty property="nivel" name="usuarios" value="${nivel}"/>
	
	<jsp:getProperty property="cadastro" name="usuarios"/>

</c:catch>

<c:out value="${erro}"/>

<a href="menu.jsp">Retornar ao Menu</a>

</body>
</html>