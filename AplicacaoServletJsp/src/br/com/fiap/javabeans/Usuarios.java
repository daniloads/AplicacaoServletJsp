package br.com.fiap.javabeans;

import br.com.fiap.dao.DaoUsuarios;

public class Usuarios {
	private String usuario,senha;
	private int nivel;
	
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public int getNivel() {
		return nivel;
	}
	public void setNivel(int nivel) {
		this.nivel = nivel;
	}
	
	
	public String getCadastro() throws Exception{
		
		DaoUsuarios dao = new DaoUsuarios();
		dao.setUsuario(this);
		return dao.cadastraUsuario();
	
	}
	
}
