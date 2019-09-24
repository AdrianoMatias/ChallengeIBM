package br.com.fiap.falconIt.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.falconIt.bo.UsuarioBO;
import br.com.fiap.falconIt.entities.Usuario;

@WebServlet(urlPatterns = "/cadastro")
public class CadastroServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			UsuarioBO usu_bo = new UsuarioBO();		
			Usuario u = new Usuario(); 

			u.setNome(req.getParameter("nome")); 
			u.setEmail(req.getParameter("email"));  
			u.setRm(req.getParameter("rm"));
			u.setSenha(req.getParameter("senha")); 
			if(usu_bo.novoUsuario(u) == 0) {
				System.out.println("Usuario não cadastrado");
			} else {
				System.out.println("Usuario cadastrado com sucesso");
			}
			} catch (Exception e) {
				e.printStackTrace();
			} 
		req.getRequestDispatcher("index.html").forward(req, resp); 
	}
}
