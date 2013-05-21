package br.com.fiap.dao;

import br.com.fiap.javabeans.Usuarios;

public class DaoUsuarios extends Dao{
	private Usuarios usuario;

	public Usuarios getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuarios usuario) {
		this.usuario = usuario;
	}
	
	public boolean validaUsuario() throws Exception{
		boolean b = false;
		try{
			abreConexao();
			st = cn.prepareStatement("SELECT * FROM USUARIOS WHERE USUARIO=? AND SENHA=?");
			st.setString(1, usuario.getUsuario());
			st.setString(2, usuario.getSenha());
			rs = st.executeQuery();
			if(rs.next()){
				usuario.setNivel(rs.getInt("NIVEL"));
				b = true;
			}
		}
		catch(Exception ex){
			throw ex;
		}
		finally{
			fechaConexao();
		}
		return b;
	}
	
	public String cadastraUsuario() throws Exception{
		String msg="";
		try{
			abreConexao();
			st = cn.prepareStatement("INSERT INTO USUARIOS (USUARIO,SENHA,NIVEL) VALUES (?,?,?)");
			st.setString(1, usuario.getUsuario());
			st.setString(2, usuario.getSenha());
			st.setInt(3, usuario.getNivel());
			
			int cont = st.executeUpdate();
			if(cont == 0){
				msg = "Nenhum usuário foi inserido!";
			}
			else{
				msg = "Usuário inserido com sucesso!";
			}
		}
		catch(Exception ex){
			throw ex;
		}
		finally{
			fechaConexao();
		}
		
		return msg;
	}
}
