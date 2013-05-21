<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.fiap.javabeans.Usuarios" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Usuarios usuario = (Usuarios)session.getAttribute("jUser");
		if(usuario==null){
			response.sendRedirect("login.jsp");
		}else{
			out.print("<b>Seja benvindo, " + usuario.getUsuario() + "</b>");
		}
	%>
</body>
</html>