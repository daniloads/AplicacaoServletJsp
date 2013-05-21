<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.fiap.javabeans.Livros" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="livros" class="br.com.fiap.javabeans.Livros"/>
<jsp:setProperty property="codigo" name="livros" value="${param.codigo }"/>
<jsp:setProperty property="titulo" name="livros" value="${param.titulo }"/>
<jsp:setProperty property="autor" name="livros" value="${param.autor }"/>
<jsp:setProperty property="data" name="livros" value="${param.data }"/>
<jsp:setProperty property="autor" name="livros" value="${param.autor }"/>
<jsp:setProperty property="preco" name="livros" value="${param.preco }"/>

<jsp:getProperty property="cadastro" name="livros"/>

</body>
</html>