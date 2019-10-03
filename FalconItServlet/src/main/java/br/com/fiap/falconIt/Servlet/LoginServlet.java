package br.com.fiap.falconIt.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.falconIt.bo.UsuarioBO;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			UsuarioBO usu_bo = new UsuarioBO();
			if (usu_bo.validarLogin(req.getParameter("rm"), req.getParameter("senha")) == 0) {
				System.out.println("Usuario não encontrado"); 
				req.getRequestDispatcher("cadastro.jsp").forward(req, resp);
			} else {
				System.out.println("Usuario encontrado");
				req.getRequestDispatcher("cursos.jsp").forward(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
