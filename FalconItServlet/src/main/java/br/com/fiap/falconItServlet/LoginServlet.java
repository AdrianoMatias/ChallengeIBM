package br.com.fiap.falconItServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.falconIt.dao.UsuarioDAO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UsuarioDAO dao_usu = null;
		try {
			dao_usu = new UsuarioDAO();
			if (dao_usu.getUser(req.getParameter("rm"), 
					req.getParameter("senha")) == 0) {
				System.out.println("Usuario não encontrado");
				req.getRequestDispatcher("cadastro.html").forward(req, resp);
			} else {
				System.out.println("Usuario encontrado");
				req.getRequestDispatcher("cursos.html").forward(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				dao_usu.encerrar();
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
	}

}
