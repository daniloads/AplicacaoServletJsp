package br.com.fiap.dao;

import java.util.ArrayList;
import java.util.List;

import br.com.fiap.javabeans.Livros;

public class DaoLivros extends Dao{
	private Livros livro;

	public Livros getLivro() {
		return livro;
	}

	public void setLivro(Livros livro) {
		this.livro = livro;
	}
	
	public String cadastraLivro() throws Exception{
		String msg="";
		try{
			abreConexao();
			st = cn.prepareStatement("INSERT INTO LIVROS (CODIGO,TITULO,AUTOR,DATAPUB,PRECO) VALUES (?,?,?,?,?)");
			st.setString(1, livro.getCodigo());
			st.setString(2, livro.getTitulo());
			st.setString(3, livro.getAutor());
			st.setDate(4, new java.sql.Date(livro.getDatapub().getTime()));
			st.setDouble(5, livro.getPreco());
			
			int cont = st.executeUpdate();
			if(cont == 0){
				msg = "Nenhum livro foi inserido!";
			}
			else{
				msg = "Livro inserido com sucesso!";
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
	
	public List<Livros> listaLivros() throws Exception{
		List<Livros> lista = new ArrayList<Livros>();
		try{
			abreConexao();
			st = cn.prepareStatement("SELECT * FROM LIVROS");
			rs = st.executeQuery();
			
			while(rs.next()){
				Livros livro = new Livros();
				livro.setCodigo(rs.getString("CODIGO"));
				livro.setTitulo(rs.getString("TITULO"));
				livro.setAutor(rs.getString("AUTOR"));
				livro.setDatapub(rs.getDate("DATAPUB"));
				livro.setPreco(rs.getDouble("PRECO"));
				
				lista.add(livro);
			}			
		}
		catch(Exception ex){
			throw ex;
		}
		finally{
			fechaConexao();
		}
		return lista;
	}
}
