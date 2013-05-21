<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Usuários</title>
</head>
<body>
<h1>Cadastro de Usuario</h1>
<form  action="cadUsuariosJSTL.jsp" method="post">
<table>
		<tr>
			<td>Usuário:</td>
			<td><input type="text" name="usuario" size="20"/></td>
		</tr>
		<tr>
			<td>Senha:</td>
			<td><input type="password" name="senha" size="20"/></td>
		</tr>
		<tr>
			<td>Nível:</td>
			<td>
				<select name="nivel">
					<option value="1">Administrador</option>
					<option value="2">Cliente</option>
				</select>
			</td>
		</tr>
		<tr>
			<td></td>		
			<td colspan="2"><input type="submit" value="Cadastrar"/></td>
		</tr>
</table>
</form>	

</body>
</html>