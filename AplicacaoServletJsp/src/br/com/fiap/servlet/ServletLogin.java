package br.com.fiap.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import br.com.fiap.dao.DaoUsuarios;
import br.com.fiap.javabeans.Usuarios;

/**
 * Servlet implementation class ServletLogin
 */
@WebServlet("/login")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Usuarios user = new Usuarios();
		DaoUsuarios daoUser = new DaoUsuarios();
		
		try {
			user.setUsuario(request.getParameter("usuario"));
			user.setSenha(request.getParameter("senha"));
			daoUser.setUsuario(user);
			
			if (daoUser.validaUsuario()) {
				HttpSession session = request.getSession();
				session.setAttribute("jUser", user);
				response.sendRedirect("menu.jsp");
			}else{
				out.print("Usuário ou senha inválidos!<br/>");
				out.print("<a href='login.jsp'> Voltar para Login </a>");
			}		
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	

}
