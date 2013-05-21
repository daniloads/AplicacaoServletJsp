package br.com.fiap.javabeans;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import br.com.fiap.dao.DaoLivros;

public class Livros {
	private String codigo, titulo,autor;
	private java.util.Date datapub;
	private double preco;
	
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getAutor() {
		return autor;
	}
	public void setAutor(String autor) {
		this.autor = autor;
	}
	public java.util.Date getDatapub() {
		return datapub;
	}
	public void setDatapub(java.util.Date datapub) {
		this.datapub = datapub;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	
	public void setData(String data) throws ParseException{
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		try{
			this.datapub = df.parse(data);
		}catch(ParseException e){
			e.printStackTrace();
		}
		
	}
	
	public String getCadastro() throws Exception{
		DaoLivros dao = new DaoLivros();
		dao.setLivro(this);
		return dao.cadastraLivro();
		
	}
	
	public List<Livros> getListaLivros() throws Exception{
		
		return new DaoLivros().listaLivros();
		
	}
	
	
}
